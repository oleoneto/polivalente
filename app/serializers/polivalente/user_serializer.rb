module Polivalente
  class UserSerializer < ActiveModel::Serializer
    attributes :name, :photo_url

    def photo_url
      object.photo.url
    end
  end
end
