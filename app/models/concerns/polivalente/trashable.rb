module Polivalente
  module Trashable
    extend ActiveSupport::Concern
    prepend Discard::Model

    included do
      has_many :trashes, as: :trashable, dependent: :destroy

      after_discard :place_in_trash!
      after_undiscard :remove_from_trash!
    end

    module ClassMethods
      def clean_trash!
        self.discarded.destroy_all
      end
    end

    def place_in_trash!
      Trash.create(user: self.user, trashable: self)
    end

    def remove_from_trash!
      Trash.find_by(user: self.user, trashable: self).destroy!
    end
  end
end
