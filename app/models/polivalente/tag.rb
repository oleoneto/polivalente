module Polivalente
  class Tag < ApplicationRecord
    has_many :taggings

    validates_length_of :name, minimum: 2, maximum: 20
    before_save :sanitize_name!

    private

    def sanitize_name!
      self.name = name.downcase
        .gsub(/[^a-zA-Z\d\s-]/i, '')
        .delete_prefix('-')
        .delete_suffix('-') unless name.nil?
    end
  end
end
