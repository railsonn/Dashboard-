require "test_helper"

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get preferences" do
    get settings_preferences_url
    assert_response :success
  end

  test "should get integrations" do
    get settings_integrations_url
    assert_response :success
  end
end
