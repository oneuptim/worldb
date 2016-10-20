json.cache! ['api', params[:state_id], 'cities'], expires_in: 12.hours do
  json.cities @collection do |element|
    json.cache! ['api', 'city', element['name'].downcase.tr(' ', '_') ] do
      json.name element['name']
    end
  end
end
