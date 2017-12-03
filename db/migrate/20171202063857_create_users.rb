class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :phone, null: false
      t.integer :admin, null: false
      t.string :role
      t.timestamps
    end
  end
end
