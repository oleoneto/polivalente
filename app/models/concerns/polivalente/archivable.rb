module Polivalente
  module Archivable
    extend ActiveSupport::Concern

    included do
      has_many :archives, as: :archivable, dependent: :destroy
    end
  end
end
