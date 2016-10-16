json.cache! ['api', 'countries'] do
  json.countries @collection do |element|
    json.cache! ['api', 'country', element.id] do
      json.iso element.iso
      json.name element.name
    end
  end
end
