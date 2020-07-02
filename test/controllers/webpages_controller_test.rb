require 'test_helper'

class WebpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get webpages_index_url
    assert_response :success
  end

  test "should get profile" do
    get webpages_profile_url
    assert_response :success
  end

  test "should get study" do
    get webpages_study_url
    assert_response :success
  end

end
