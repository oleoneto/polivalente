# frozen_string_literal: true

module Polivalente
  module Visibility
    extend ActiveSupport::Concern

    included do
      scope :hidden,  -> { where(is_private: true) }
      scope :visible, -> { where(is_private: false) }
    end

    def set_private
      update_attribute :is_private, true
    end

    def set_public
      update_attribute :is_private, false
    end

    def public?
      !is_private
    end
  end
end
