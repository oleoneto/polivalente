module Polivalente
  class Tag < ApplicationRecord
    has_many :taggings
  end
end
