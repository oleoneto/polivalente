class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user,         null: false, index: true, foreign_key: { on_delete: :cascade }
      t.references :commentable,  null: false, index: true, polymorphic: true
      t.string     :content_hash, null: false
      t.boolean    :is_private,   null: false
      t.datetime   :discarded_at, null: true,  index: true

      t.timestamps
    end
  end
end
