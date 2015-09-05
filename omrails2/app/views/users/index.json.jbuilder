json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :children, :mom, :dad
  json.url user_url(user, format: :json)
end
