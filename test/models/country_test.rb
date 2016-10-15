require "test_helper"

class CountryTest < ActiveSupport::TestCase
  def country
    @country ||= Country.new
  end

  def test_valid
    assert country.valid?
  end
end
