class CreateMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :movements do |t|
      t.string :title
      t.float :value
      t.datetime :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
