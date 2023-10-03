class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :currency_name
      t.string :currency_symbol

      t.timestamps
    end
  end
end
