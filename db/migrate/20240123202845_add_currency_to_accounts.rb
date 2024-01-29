class AddCurrencyToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :currency, :string
  end
end
