require 'test_helper'

class CartstuffControllerTest < ActionDispatch::IntegrationTest
  test "should get thecart" do
    get cartstuff_thecart_url
    assert_response :success
  end

end
