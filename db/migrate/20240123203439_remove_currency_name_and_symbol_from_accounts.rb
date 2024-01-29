class RemoveCurrencyNameAndSymbolFromAccounts < ActiveRecord::Migration[7.0]
  def change
    remove_column :accounts, :currency_name
    remove_column :accounts, :currency_symbol
  end
end
