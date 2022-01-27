class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.references :author,       null: false, index: true, foreign_key: { to_table: :users, on_delete: :cascade }
      t.string     :title,        null: false
      t.string     :language,     null: true
      t.string     :excerpt,      null: true,  limit: 144
      t.string     :content_hash, null: false, index: true
      t.json       :metadata,     null: false, default: "{}"
      t.string     :status,       null: false, index: true
      t.boolean    :is_private,   null: false, index: true, default: false
      t.datetime   :discared_at,  null: true,  index: true

      t.timestamps
    end
  end
end
