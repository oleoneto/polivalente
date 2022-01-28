module Polivalente
  module ContentHashable
    extend ActiveSupport::Concern

    included do
      class_attribute :content_field
      class_attribute :content_hash_column
      self.content_field = :content
      self.content_hash_column = :content_hash

      before_create :compute_content_hash
      before_update :compute_content_hash
    end

    def compute_content_hash
      rich_text = ActionText::RichText.find_by(:record => self)

      if self.new_record?
        self[self.class.content_hash_column] = self.send(self.class.content_field).to_s.hash
      else
        if rich_text.nil?
          self[self.class.content_hash_column] = self[self.class.content_field].to_s.hash
        else
          self[self.class.content_hash_column] = rich_text.body.to_s.hash
        end
      end
    end
  end
end
