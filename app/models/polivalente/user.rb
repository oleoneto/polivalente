module Polivalente
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :registerable, :validatable,
    # :timeoutable, and :omniauthable
  
    devise :database_authenticatable,
           :confirmable,
           :rememberable,
           :recoverable,
           :lockable,
           :trackable

    validates_length_of :first_name,  minimum: 2, maximum: 20
    validates_length_of :last_name,   minimum: 2, maximum: 20         
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email
    validates_length_of :password, minimum: 8

    def name
      "#{first_name} #{last_name}"
    end
  end
end