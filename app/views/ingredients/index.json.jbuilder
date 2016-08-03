json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :explanation
  json.url ingredient_url(ingredient, format: :json)
end
