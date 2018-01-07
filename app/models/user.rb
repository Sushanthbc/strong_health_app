class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :username, :email
  validates_uniqueness_of :phone, case_sensitive: false
  validates_presence_of :username, :email, :first_name, :last_name,
                        :phone, :admin, :role
end
