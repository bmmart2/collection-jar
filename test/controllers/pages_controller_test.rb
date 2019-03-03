require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_items_url
    assert_response :success
  end

  test "should get team" do
    get pages_team_url
    assert_response :success
  end

  test "should get terms" do
    get pages_terms_url
    assert_response :success
  end

end
