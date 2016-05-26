class CreateAccountBalances < ActiveRecord::Migration[5.0]
  def change
    create_table :account_balances do |t|
      t.decimal :balance, precision: 8, scale: 2
      t.references :account, foreign_key: true
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
