json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :name, :street, :city
  json.url user_url(user, format: :json)
end
