class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.belongs_to :user,      null: false, index: true, foreign_key: { on_delete: :cascade }
      t.references :reactable, null: false, polymorphic: true
      t.string     :kind,      null: false, index: true, limit: 20
      t.json       :data,      null: true,  default: "{}"

      t.timestamps

      t.index [:user_id, :kind, :reactable_type, :reactable_id], unique: true, name: "index_unique_user_reactions"
    end
  end
end
