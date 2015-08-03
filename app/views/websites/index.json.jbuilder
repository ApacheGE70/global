json.array!(@websites) do |website|
  json.extract! website, :id, :menu_type, :website_name, :description, :likes, :user_id, :created_at, :updated_at
  json.url website_url(website, format: :json)
end
