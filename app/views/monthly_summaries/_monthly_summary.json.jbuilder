json.extract! monthly_summary, :id, :user_id, :month, :year, :total_income, :total_expense, :balance, :created_at, :updated_at
json.url monthly_summary_url(monthly_summary, format: :json)
