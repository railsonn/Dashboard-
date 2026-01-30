class AddColumnsToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :language, :string, default: "en"
    add_column :users, :currency, :string, default: "USD"
    add_column :users, :theme, :sring, default: "Light"
    add_column :users, :number_format, :decimal
  end
end
