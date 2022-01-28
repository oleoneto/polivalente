module Polivalente
  class Comment < ApplicationRecord
    include Commentable
    include ContentHashable
    include Reactable
    include Sortable
    include UserOwned

    has_rich_text :content

    belongs_to :commentable, polymorphic: true

    alias :author :user

    validates_presence_of :commentable
    validates_presence_of :content

    def byline
      "by #{author.name}"
    end

    def summary
      "#{truncate(content)}"
    end
  end
end
