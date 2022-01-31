class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.belongs_to :tag,      null: false, foreign_key: { on_delete: :cascade }
      t.references :taggable, null: false, polymorphic: true, index: true

      t.timestamps

      t.index [:tag_id, :taggable_id, :taggable_type], unique: true, name: "index_unique_tagged_item"
    end
  end
end
