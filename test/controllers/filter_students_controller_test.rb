require 'test_helper'

class FilterStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get filter" do
    get filter_students_filter_url
    assert_response :success
  end

  test "should get viewfilter" do
    get filter_students_viewfilter_url
    assert_response :success
  end

end
