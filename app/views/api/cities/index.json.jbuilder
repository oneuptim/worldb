json.cities @collection do |element|
  json.cache! ['api', 'city', element['name'].dowcase.tr(' ', '_') ] do
    json.name element['name']
  end
end
