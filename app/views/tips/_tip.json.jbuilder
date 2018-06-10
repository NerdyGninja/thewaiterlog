json.extract! tip, :id, :user_id, :date, :hours, :amount, :comment, :created_at, :updated_at
json.url tip_url(tip, format: :json)
