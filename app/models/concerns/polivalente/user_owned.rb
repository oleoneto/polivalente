module Polivalente
  module UserOwned
    extend ActiveSupport::Concern

    included do
      class_attribute :user_field
      self.user_field = :user

      belongs_to self.user_field
      validates_presence_of self.user_field

      scope :with_user, -> { includes(self[self.class.user_field])}
    end
  end
end
