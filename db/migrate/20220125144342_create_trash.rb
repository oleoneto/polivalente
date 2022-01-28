class CreateTrash < ActiveRecord::Migration[6.1]
  def change
    create_table :trash do |t|
      t.belongs_to :user,      null: false, foreign_key: { on_delete: :cascade }
      t.references :trashable, null: false, polymorphic: true, index: true

      t.timestamps

      t.index [:user_id, :trashable_id, :trashable_type], name: "index_unique_trash_item"
    end
  end
end
