json.extract! transaction, :id, :transaction_type, :amount, :description, :transaction_date, :user_id, :account_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
