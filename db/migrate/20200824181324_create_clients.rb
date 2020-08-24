class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip_code

      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
