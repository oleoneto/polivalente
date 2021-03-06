module Polivalente
  # Archiver: an entity capable of creating and managing archives of other records.
  module Archiver
    extend ActiveSupport::Concern

    included do
      has_many :archives, dependent: :destroy, class_name: "Polivalente::Archive"

      scope :with_archives, -> { include(:archives) }
    end
  end
end
