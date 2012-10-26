require 'test_helper'

class EvaluacionesControllerTest < ActionController::TestCase
  test "should get evalInicial" do
    get :evalInicial
    assert_response :success
  end

end
