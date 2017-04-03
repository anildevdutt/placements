require 'test_helper'

class AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get access_home_url
    assert_response :success
  end

  test "should get contact" do
    get access_contact_url
    assert_response :success
  end

  test "should get about" do
    get access_about_url
    assert_response :success
  end

  test "should get login" do
    get access_login_url
    assert_response :success
  end

end
