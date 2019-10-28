require 'test_helper'

class GameSystemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get game_systems_index_url
    assert_response :success
  end

  test "should get show" do
    get game_systems_show_url
    assert_response :success
  end

end
