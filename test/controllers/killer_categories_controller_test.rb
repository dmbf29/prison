require 'test_helper'

class KillerCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get killer_categories_new_url
    assert_response :success
  end

end
