json.cache! 'api_countries' do
  json.countries @collection do |element|
    json.cache! "api_country_#{element.id}" do
      json.iso element.iso
      json.name element.name
      json.languages element.languages
    end
  end
end
