module Polivalente
  module Reactor
    # Reactor: an entity capable of creating and managing reactions on records.
    #
    extend ActiveSupport::Concern

    included do
      has_many :reactions, dependent: :destroy, class_name: "Polivalente::Reaction"

      scope :with_reactions, -> { include(:reactions) }
    end
  end
end
