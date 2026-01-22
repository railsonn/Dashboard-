class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices do |t|
      t.decimal :total_amount
      t.date :due_date
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
