json.countries @collection do |element|
  json.partial! 'countries/country', country: element
end
