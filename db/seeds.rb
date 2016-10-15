if Country.count.zero? && State.count.zero?
  sql = File.read(Rails.root.join('db', "worldb.sql"))
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |statement|
      ActiveRecord::Base.connection.execute(statement)
    end
  end
end
