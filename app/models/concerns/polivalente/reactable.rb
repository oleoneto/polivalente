module Polivalente
  module Reactable
    extend ActiveSupport::Concern
    prepend Discard::Model

    included do
      has_many :reactions, as: :reactable, dependent: :destroy, class_name: "Polivalente::Reaction"

      scope :with_reactions, -> { include(:reactions) }

      scope :emoji,     -> { where(type: :emoji) }
      scope :bookmarks, -> { where(type: :bookmark) }
      scope :likes,     -> { where(type: :like) }

      after_discard   -> { reactions.discard_all }
      after_undiscard -> { reactions.undiscard_all }
    end
  end
end