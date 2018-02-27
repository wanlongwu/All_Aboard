require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boats_index_url
    assert_response :success
  end

  test "should get show" do
    get boats_show_url
    assert_response :success
  end

end
