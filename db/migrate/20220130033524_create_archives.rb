class CreateArchives < ActiveRecord::Migration[7.0]
  def change
    create_table :archives do |t|
      t.belongs_to :user,       null: false, foreign_key: { on_delete: :cascade }
      t.references :archivable, null: false, polymorphic: true, index: true

      t.timestamps

      t.index [:user_id, :archivable_id, :archivable_type], name: "index_unique_archive_item"
    end
  end
end
