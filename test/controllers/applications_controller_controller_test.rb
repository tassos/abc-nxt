require 'test_helper'

class ApplicationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get applications_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get applications_controller_create_url
    assert_response :success
  end

end
