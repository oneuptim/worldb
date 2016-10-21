json.cache! "api_country_#{country.id}" do
  json.iso country.iso
  json.name country.name
  json.languages country.languages
end
