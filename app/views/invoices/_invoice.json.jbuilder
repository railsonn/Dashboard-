json.extract! invoice, :id, :total_amount, :due_date, :status, :account_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
