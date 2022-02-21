class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.references :follower, null: false, foreign_key: { to_table: :users, on_delete: :cascade }
      t.references :followee, null: false, foreign_key: { to_table: :users, on_delete: :cascade }

      t.timestamps
    end

    add_index :follows, [:follower_id, :followee_id], unique: true, name: "index_unique_follow_relationship"
  end
end
