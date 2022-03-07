module Polivalente
  class Tag < ApplicationRecord
    include ActionText::Attachable
    include Sortable

    has_many :taggings

    validates_length_of :name, minimum: 2, maximum: 20
    validates_uniqueness_of :name
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
