json.extract! client, :id, :name, :adress, :phone_number, :contact, :created_at, :updated_at
json.url client_url(client, format: :json)