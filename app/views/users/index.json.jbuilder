json.array!(@users) do |user|
  json.extract! user, :id, :login, :uid, :email
  json.url user_url(user, format: :json)
end
