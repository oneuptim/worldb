require "test_helper"

class CityTest < ActiveSupport::TestCase
  def city
    @city ||= City.new
  end

  def test_valid
    assert city.valid?
  end
end
