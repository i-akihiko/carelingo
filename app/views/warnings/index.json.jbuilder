json.array!(@warnings) do |warning|
  json.extract! warning, :id, :caution, :liver_warning, :pregnancy_warning
  json.url warning_url(warning, format: :json)
end
