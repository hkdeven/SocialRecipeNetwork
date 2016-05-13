json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :controller
  json.url recipe_url(recipe, format: :json)
end
