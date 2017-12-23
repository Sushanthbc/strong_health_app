class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :display_name, null: false
      t.string :street, null: false
      t.string :area, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :tin_number, null: false
      t.string :dl_number_one
      t.string :dl_number_two
      t.string :dl_number_three
      t.string :gst_number, null: false
      t.string :cst_number, null: false
      t.string :lst_number, null: false
      t.string :pan_number, null: false
      t.bigint :credit_limit
      t.integer :credit_days
      t.timestamps
    end
  end
end
