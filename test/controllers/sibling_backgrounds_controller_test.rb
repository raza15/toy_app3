require 'test_helper'

class SiblingBackgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sibling_background = sibling_backgrounds(:one)
  end

  test "should get index" do
    get sibling_backgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_sibling_background_url
    assert_response :success
  end

  test "should create sibling_background" do
    assert_difference('SiblingBackground.count') do
      post sibling_backgrounds_url, params: { sibling_background: { sibling_age: @sibling_background.sibling_age, sibling_marital_status: @sibling_background.sibling_marital_status, sibling_name: @sibling_background.sibling_name, sibling_residence: @sibling_background.sibling_residence, user_id: @sibling_background.user_id } }
    end

    assert_redirected_to sibling_background_url(SiblingBackground.last)
  end

  test "should show sibling_background" do
    get sibling_background_url(@sibling_background)
    assert_response :success
  end

  test "should get edit" do
    get edit_sibling_background_url(@sibling_background)
    assert_response :success
  end

  test "should update sibling_background" do
    patch sibling_background_url(@sibling_background), params: { sibling_background: { sibling_age: @sibling_background.sibling_age, sibling_marital_status: @sibling_background.sibling_marital_status, sibling_name: @sibling_background.sibling_name, sibling_residence: @sibling_background.sibling_residence, user_id: @sibling_background.user_id } }
    assert_redirected_to sibling_background_url(@sibling_background)
  end

  test "should destroy sibling_background" do
    assert_difference('SiblingBackground.count', -1) do
      delete sibling_background_url(@sibling_background)
    end

    assert_redirected_to sibling_backgrounds_url
  end
end
