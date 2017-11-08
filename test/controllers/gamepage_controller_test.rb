require 'test_helper'

class GamepageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gamepage_show_url
    assert_response :success
  end

end
