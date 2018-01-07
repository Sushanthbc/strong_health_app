require 'rails_helper'

RSpec.describe Product, type: :model do
  subject do
    described_class.new(product_name: 'batman', product_company_name: 'dc',
                        composition: 'bat mobile', product_type: 'super hero',
                        hsn_code: 'jl2', purchase_rate: 100_000,
                        purchase_trade_discount: 5.5, purchase_vendor_discount: 2,
                        purchase_overhead: 1, sales_rate: 200_000, sales_trade_discount: 4.8,
                        sales_vendor_discount: 2.5, sales_overhead: 1.5)
  end
  context 'validate presence' do
    it { is_expected.to validate_presence_of :product_name }
    it { is_expected.to validate_presence_of :product_company_name }
    it { is_expected.to validate_presence_of :composition }
    it { is_expected.to validate_presence_of :product_type }
    it { is_expected.to validate_presence_of :hsn_code }
    it { is_expected.to validate_presence_of :purchase_rate }
    it { is_expected.to validate_presence_of  :purchase_trade_discount }
    it { is_expected.to validate_presence_of  :purchase_vendor_discount }
    it { is_expected.to validate_presence_of  :sales_rate }
    it { is_expected.to validate_presence_of  :sales_trade_discount }
    it { is_expected.to validate_presence_of  :sales_vendor_discount }
  end
end
