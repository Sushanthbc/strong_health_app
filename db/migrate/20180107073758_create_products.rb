class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.string :product_company_name, null:false
      t.longtext :composition, null: false
      t.string :product_type, null: false
      t.string :hsn_code, null: false
      t.float :purchase_rate, null: false
      t.float :purchase_trade_discount, null: false
      t.float :purchase_vendor_discount, null: false
      t.float :purchase_overhead
      t.float :sales_rate, null: false
      t.float :sales_trade_discount, null: false
      t.float :sales_vendor_discount, null: false
      t.float :sales_overhead
      t.timestamps
    end
  end
end
