json.cities @collection do |element|
  json.partial! 'cities/city', city: element
end
