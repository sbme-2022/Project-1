class CreateCurrencyRates < ActiveRecord::Migration[7.0]
  def change
    create_table :currency_rates do |t|
      t.string :name
      t.decimal :value
      t.timestamps
    end
  end
end
