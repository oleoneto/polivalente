module Polivalente
  module TagsHelper
    # Returns a list of tags associated with the given collection.
    #
    # A list of classes should be provided such that a class is assigned
    # to a tag according to the number of times it occurs in the collection.
    #
    # Example:
    #
    #   <% tag_cloud(Article.all, %w(s m l)) do |tag, klass| %>
    #     <%= link_to tag.name, tag_path(tag), class_names: (klass) %>
    #   <% end %>
    #
    # Produces:
    #
    #   <a class="s" href="/tags/news">news</a>
    #   <a class="l" href="/tags/entertainment">entertainment</a>
    #   <a class="l" href="/tags/video">video</a>
    #   <a class="m" href="/tags/podcast">podcast</a>
    #
    def tag_cloud(collection, classes)
      tags = collection.tag_counts(collection.pluck(:id))

      max = tags.sort_by(&:count).last

      tags.each do |tag|
        index = tag.count.to_f / max.count * (classes.size - 1)
        yield(tag, classes[index.round])
      end
    end
  end
end
