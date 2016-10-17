json.cache! ['api', 'country', country.id] do
  json.iso country.iso
  json.name country.name
  json.languages country.languages
end
