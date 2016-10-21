json.cache! "api_#{params[:country_id]}_states", expires_in: 24.hours do
  json.states @collection do |element|
    json.cache! "api_state_#{element.id}" do
      json.id element.id
      json.name element.name
    end
  end
end
