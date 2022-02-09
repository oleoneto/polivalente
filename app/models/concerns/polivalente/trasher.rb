# frozen_string_literal: true

module Polivalente
  # Trasher: an entity that owns and manages records that can be added to trash.
  module Trasher
    extend ActiveSupport::Concern

    included do
      has_many :trashes, dependent: :destroy, class_name: "Polivalente::Trash"

      scope :with_trash, -> { include(:trashes) }
    end
  end
end
