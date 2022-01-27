module Polivalente
  class Article < ApplicationRecord
    include Polivalente::Commentable
    include Polivalente::ContentHashable
    include Polivalente::Reactable
    include Polivalente::Taggable

    has_rich_text :content

    belongs_to :author, class_name: "User"
    alias :user :author

    enum status: {unlisted: 0, published: 1}

    enum language: Hash[LanguageList::COMMON_LANGUAGES.map { |l| [l.name, l.iso_639_1] }]

    scope :published,   -> { where(status: :published) }
    scope :with_author, -> { includes(:author) }

    validates_presence_of :content
    validates_presence_of :status
    validates_presence_of :language
 
    validates :title,    length: { minimum: 3, maximum: 50}
    validates :status,   inclusion: { in: statuses.keys }
    validates :language, inclusion: { in: languages.keys }

    def summary
      "#{truncate(content)}" if excerpt.nil?
      excerpt
    end

    def byline
      "by #{author.name}"
    end

    def time_since_created
      Time.current - created_at
    end

    def colors
      tag_list.split(',').each do |tag|
        return tag if Polivalente.supported_article_tags.include? tag.strip
      end

      "base"
    end
  end
end
