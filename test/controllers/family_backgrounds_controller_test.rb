require 'test_helper'

class FamilyBackgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_background = family_backgrounds(:one)
  end

  test "should get index" do
    get family_backgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_family_background_url
    assert_response :success
  end

  test "should create family_background" do
    assert_difference('FamilyBackground.count') do
      post family_backgrounds_url, params: { family_background: { father_current_occupation: @family_background.father_current_occupation, mother_current_occupation: @family_background.mother_current_occupation, my_current_occupaion: @family_background.my_current_occupaion, number_of_siblings: @family_background.number_of_siblings, user_id: @family_background.user_id } }
    end

    assert_redirected_to family_background_url(FamilyBackground.last)
  end

  test "should show family_background" do
    get family_background_url(@family_background)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_background_url(@family_background)
    assert_response :success
  end

  test "should update family_background" do
    patch family_background_url(@family_background), params: { family_background: { father_current_occupation: @family_background.father_current_occupation, mother_current_occupation: @family_background.mother_current_occupation, my_current_occupaion: @family_background.my_current_occupaion, number_of_siblings: @family_background.number_of_siblings, user_id: @family_background.user_id } }
    assert_redirected_to family_background_url(@family_background)
  end

  test "should destroy family_background" do
    assert_difference('FamilyBackground.count', -1) do
      delete family_background_url(@family_background)
    end

    assert_redirected_to family_backgrounds_url
  end
end
