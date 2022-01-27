module Polivalente
  class Tagging < ApplicationRecord
    belongs_to :tag
    belongs_to :taggable, polymorphic: true

    validates_presence_of :tag
    validates_presence_of :taggable
  end
end
