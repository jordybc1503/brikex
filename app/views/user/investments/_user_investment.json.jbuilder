json.extract! user_investment, :id, :user_id, :project_id, :amount, :investment_date, :created_at, :updated_at
json.url user_investment_url(user_investment, format: :json)
