json.array!(@comments) do |comment|
  json.extract! comment, :id, :controller
  json.url comment_url(comment, format: :json)
end
