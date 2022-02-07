module Polivalente
  class CommentSerializer < ActiveModel::Serializer
    attributes :id, :content
    has_one :user
    has_one :commentable
    has_many :comments
  end
end
