json.countries @collection do |element|
  json.cache! ['api', 'county', element.id] do
    json.iso element.iso
    json.name element.name
  end
end
