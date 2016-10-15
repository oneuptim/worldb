ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  ActiveRecord::Migration.check_pending!

  def json_parse(raw)
    JSON.parse(raw, symbolize_names: true)
  end
end
