json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :name, :min_price, :max_price, :description, :image_url, :size
  json.url medicine_url(medicine, format: :json)
end
