class AddLanguagesToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :languages, :json
  end
end
