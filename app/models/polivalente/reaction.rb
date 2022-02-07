module Polivalente
  class Reaction < ApplicationRecord
    include Sortable
    include UserOwned

    belongs_to :reactable, polymorphic: true

    enum kind: {
      bookmark: 10,
      emoji:    20,
      like:     30,
    }, _prefix: :reaction

    validates_presence_of :kind
    validates :kind,   inclusion: { in: kinds.keys }
    validate  :emoji_type_has_data!

    private

    def emoji_type_has_data!
      errors.add "emoji missing" if kind == "emoji" && data.nil?
    end
  end
end
