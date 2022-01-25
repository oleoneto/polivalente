class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.belongs_to :tag, null: false, foreign_key: { on_delete: :cascade }
      t.references :taggable, polymorphic: true, null: false, index: true, on_delete: :cascade

      t.timestamps

      t.index [:tag_id, :taggable_id, :taggable_type], name: "index_unique_tagged_item"
    end
  end
end
