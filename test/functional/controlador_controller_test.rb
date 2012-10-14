require 'test_helper'

class ControladorControllerTest < ActionController::TestCase
  test "should get leccionIyC" do
    get :leccionIyC
    assert_response :success
  end

end
