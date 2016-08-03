json.array!(@patients) do |patient|
  json.extract! patient, :id, :is_adult, :age, :pain
  json.url patient_url(patient, format: :json)
end
