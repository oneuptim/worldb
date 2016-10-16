require "test_helper"

class Api::BaseControllerTest < ActionDispatch::IntegrationTest
  def test_index
    get api_base_index_url
    assert_response :success
  end

  def test_show
    get api_base_show_url
    assert_response :success
  end

end
