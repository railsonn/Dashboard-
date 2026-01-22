json.extract! budget, :id, :user_id, :categories_id, :limit_amount, :month, :year, :created_at, :updated_at
json.url budget_url(budget, format: :json)
