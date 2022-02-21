module Polivalente
  class Follow < ApplicationRecord
    include Sortable

    belongs_to :follower, class_name: Polivalente.config.user_class
    belongs_to :followee, class_name: Polivalente.config.user_class

    validates_presence_of :follower
    validates_presence_of :followee
    validate :not_following_yourself!

    # broadcasts_to -> (follow) { "follows" }

    def follower_name
      follower.name
    end

    def followee_name
      followee.name
    end

    private

      def not_following_yourself!
        errors.add "a user can only follow someone else" if follower == followee
      end
  end
end
