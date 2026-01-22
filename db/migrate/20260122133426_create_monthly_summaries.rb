class CreateMonthlySummaries < ActiveRecord::Migration[8.0]
  def change
    create_table :monthly_summaries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :month
      t.integer :year
      t.decimal :total_income
      t.decimal :total_expense
      t.decimal :balance

      t.timestamps
    end
  end
end
