class MoveCitiesToJsonField < ActiveRecord::Migration[5.0]
  def change
    if City.any?
      State.all.find_each do |state|
        cities_json = []
        City.where(state_id: state.id).find_each do |city|
          cities_json << { name: city.name }
        end
        state.cities = cities_json
        state.save
      end

    end
  end
end
