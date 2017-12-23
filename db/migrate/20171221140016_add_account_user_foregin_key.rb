class AddAccountUserForeginKey < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :account, index: true, foreign_key: true
    add_column :accounts, :store_type, :string
  end
end
