json.cache! "api_#{params[:state_id]}_cities", expires_in: 12.hours do
  json.cities @collection do |element|
    json.cache! "api_city_#{element['name'].downcase.tr(' ', '_')}" do
      json.name element['name']
    end
  end
end
