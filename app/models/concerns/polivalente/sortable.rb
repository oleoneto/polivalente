# frozen_string_literal: true

module Polivalente
  module Sortable
    # Sortable: an entity that can be ordered based on its timestamp fiedls
    #
    extend ActiveSupport::Concern

    included do
      scope :sorted,      -> { order(created_at: :asc) }
      scope :latest,      -> { order(created_at: :desc) }
      scope :last_edited, -> { order(updated_at: :desc) }
    end
  end
end
