class ChangeFieldsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :currency_rates, :name, :currencyName
    rename_column :currency_rates, :value, :currencyValue
  end
end
