json.array!(@directions) do |direction|
  json.extract! direction, :id, :over_12, :over_6, :under_6
  json.url direction_url(direction, format: :json)
end
