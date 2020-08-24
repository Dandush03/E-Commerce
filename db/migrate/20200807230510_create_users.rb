# Generate User Migration
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password_digest

      t.string :privilage, default: 'client'

      t.timestamps
    end
  end
end
