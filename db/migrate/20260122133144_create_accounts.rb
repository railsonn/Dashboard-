class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :accountType
      t.string :name
      t.integer :balance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
