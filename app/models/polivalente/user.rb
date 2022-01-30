module Polivalente
  class User < ApplicationRecord
    include Sortable

    # Include default devise modules. Others available are:
    # :registerable, :validatable,
    # :timeoutable, and :omniauthable
  
    devise :database_authenticatable,
           :confirmable,
           :rememberable,
           :recoverable,
           :lockable,
           :trackable
    
    has_one_attached :photo

    validates_length_of :first_name,  minimum: 2, maximum: 20
    validates_length_of :last_name,   minimum: 2, maximum: 20         
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email
    validates_length_of :password, minimum: 8

    # A user account is considered spam/abandoned if:
    # - The account has existed for at least N days
    # - The account was never confirmed/activated
    # - The the user never signed in to their account
    #
    # These records should be deleted from the database periodically
    scope :spam, -> {
      where("created_at <= ? AND sign_in_count <= 1 AND confirmed_at IS NULL", Time.zone.now - Polivalente::spam_account_ttl.days)
    }

    # A user account is inactive if:
    # - The account has not been signed in to for more than X days
    # These users should be notified about their account state
    scope :inactive, -> {
      where("current_sign_in_at <= ?", Time.zone.now - Polivalente::inactive_account_ttl.days)
    }

    scope :unconfirmed, -> { where(:confirmed_at => nil)}

    def name
      "#{first_name} #{last_name}"
    end
  end
end