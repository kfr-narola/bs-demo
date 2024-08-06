require "test_helper"

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get account_overview_url
    assert_response :success
  end

  test "should get setings" do
    get account_setings_url
    assert_response :success
  end

  test "should get security" do
    get account_security_url
    assert_response :success
  end
end
