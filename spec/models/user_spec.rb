require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(username: 'nicky', password: 'nick',
                        password_confirmation: 'nick', email: 'nick@nick.com',
                        first_name: 'Laddy', last_name: 'Basic',
                        phone: '91-9739375345', admin: 1, role: 'Doctor')
  end
  context 'Validate uniqueness and presence of' do
    it { is_expected.to validate_uniqueness_of :username }
    it { is_expected.to validate_uniqueness_of :email }
    it { should validate_uniqueness_of(:phone).case_insensitive }
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of  :last_name }
    it { is_expected.to validate_presence_of  :phone }
    it { is_expected.to validate_presence_of  :admin }
    it { is_expected.to validate_presence_of  :role }
    it { is_expected.to validate_presence_of  :admin }
  end
end
