class RemoteSeedLanguages < ActiveRecord::Migration[5.0]
  def change
    require 'csv'
    require 'open-uri'
    csv = CSV.parse(open('https://gist.githubusercontent.com/3zcurdia/aa2aeb30e6b47daf464c/raw/1ebb3ebb5ac8792196f532cc33b0c09aef98d86f/countries.csv'))
    csv.each do |row|
      country = Country.find_by_iso(row[0])
      next unless country
      country.languages = row[-1].split(' ') 
      country.save
    end
  end
end
