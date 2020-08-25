# Generate User Migration
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password_digest

      t.string :privilage, default: 'client'
      t.boolean :validated, default: 'false'

      t.boolean :status, default: true
      t.boolean :is_client, default: false

      t.timestamps
    end
  end
end
