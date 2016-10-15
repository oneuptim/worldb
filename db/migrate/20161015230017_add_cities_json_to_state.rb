class AddCitiesJsonToState < ActiveRecord::Migration[5.0]
  def change
    add_column :states, :cities, :json
  end
end
