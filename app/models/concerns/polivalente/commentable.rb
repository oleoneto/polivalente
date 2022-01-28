module Polivalente
  module Commentable
    extend ActiveSupport::Concern
    prepend Discard::Model

    included do
      has_many :comments, as: :commentable, dependent: :destroy

      scope :commented,     -> { where(comments.count > 0) }
      scope :with_comments, -> { includes(:comments) }

      after_discard         -> { comments.discard_all }
      after_undiscard       -> { comments.undiscard_all }
    end
  end
end
