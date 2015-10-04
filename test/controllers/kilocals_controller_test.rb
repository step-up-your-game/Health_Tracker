require 'test_helper'

class KilocalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
