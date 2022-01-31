class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string  :first_name,   null: false,   index: true
      t.string  :last_name,    null: false,   index: true
      t.boolean :is_admin,     null: false,   index: true, default: false
      t.boolean :is_verified,  null: false,   index: true, default: false

      ## Devise::DatabaseAuthenticatable
      t.string :email,              null: false, default: "", index: { unique: true }
      t.string :encrypted_password, null: false, default: ""

      ## Devise::Recoverable
      t.string   :reset_password_token, unique: true
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Devise::Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Devise::Confirmable
      t.string   :confirmation_token, unique: true
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at

      ## Devise::Lockable
      t.integer  :failed_attempts, default: 0, null: false
      t.string   :unlock_token, unique: true
      t.datetime :locked_at

      t.datetime :discarded_at, null: true, index: true

      t.timestamps
    end
  end
end