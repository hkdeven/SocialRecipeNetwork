json.array!(@sessions) do |session|
  json.extract! session, :id, :controller
  json.url session_url(session, format: :json)
end
