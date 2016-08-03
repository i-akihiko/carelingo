json.array!(@uses) do |use|
  json.extract! use, :id, :name
  json.url use_url(use, format: :json)
end
