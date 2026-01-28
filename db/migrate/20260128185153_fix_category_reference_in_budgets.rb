class FixCategoryReferenceInBudgets < ActiveRecord::Migration[8.0]
  def change
    remove_column :budgets, :categories_id, :integer
    add_reference :budgets, :category, null: false, foreign_key: true
  end
end
