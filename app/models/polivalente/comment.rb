module Polivalente
  class Comment < ApplicationRecord
    include Polivalente::Commentable
    include Polivalente::ContentHashable
    include Polivalente::Reactable
    include Polivalente::UserOwned

    has_rich_text :content

    belongs_to :commentable, polymorphic: true
    
    alias :author :user

    validates_presence_of :commentable
    validates_presence_of :content

    def byline
      "by #{author.name}"
    end
  end
end
