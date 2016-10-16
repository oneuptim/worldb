json.cache! ['api', 'states'] do
  json.states @collection do |element|
    json.cache! ['api', 'state', element.id] do
      json.id element.id
      json.name element.name
    end
  end
end
