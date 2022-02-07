module Polivalente
  class TaggingSerializer < ActiveModel::Serializer
    attributes :id, :created_at
    has_one :tag
    has_one :taggable
  end
end
