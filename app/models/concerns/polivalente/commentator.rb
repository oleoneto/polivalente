module Polivalente
  module Commentator
    # Commentator: an entity capable of creating and managing comments.
    #
    extend ActiveSupport::Concern

    included do
      has_many :comments, dependent: :destroy

      scope :with_comments, -> { includes(:comments) }
    end
  end
end
