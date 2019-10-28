require 'test_helper'

class EsCharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get es_characters_index_url
    assert_response :success
  end

  test "should get show" do
    get es_characters_show_url
    assert_response :success
  end

  test "should get about" do
    get es_characters_about_url
    assert_response :success
  end

end
