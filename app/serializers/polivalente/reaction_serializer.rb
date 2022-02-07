module Polivalente
  class ReactionSerializer < ActiveModel::Serializer
    attributes :id, :kind
    has_one :user
    has_one :reactable
  end
end
