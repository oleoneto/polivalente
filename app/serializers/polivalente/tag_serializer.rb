module Polivalente
  class TagSerializer < ActiveModel::Serializer
    attributes :id, :name, :created_at
    has_many :taggings
  end
end
