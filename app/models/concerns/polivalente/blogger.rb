module Polivalente
  module Blogger
    extend ActiveSupport::Concern

    included do
      has_many :articles, class_name: "Polivalente::Article", foreign_key: :author_id
    end
  end
end

