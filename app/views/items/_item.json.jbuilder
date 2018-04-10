json.extract! item, :id, :description, :deadline, :created_at, :updated_at
json.url item_url(item, format: :json)
