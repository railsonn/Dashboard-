class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true
      t.decimal :limit_amount
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
