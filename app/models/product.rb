class Product < ApplicationRecord
  validates_presence_of :product_name, :product_company_name,
                        :composition, :product_type, :hsn_code, :purchase_rate, :purchase_trade_discount,
                        :purchase_vendor_discount, :sales_rate, :sales_trade_discount, :sales_vendor_discount
end
