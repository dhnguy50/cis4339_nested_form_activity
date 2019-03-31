json.extract! food, :id, :food_name, :shopping_list_id, :created_at, :updated_at
json.url food_url(food, format: :json)
