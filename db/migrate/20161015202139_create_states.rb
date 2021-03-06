class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.json   :cities
      t.references :country, foreign_key: true
    end
  end
end
