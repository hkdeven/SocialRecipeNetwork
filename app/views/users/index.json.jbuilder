json.array!(@users) do |user|
  json.extract! user, :id, :controller
  json.url user_url(user, format: :json)
end
