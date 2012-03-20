require 'test_helper'

class BrowserControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
