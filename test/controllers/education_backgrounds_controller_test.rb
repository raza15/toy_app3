require 'test_helper'

class EducationBackgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_background = education_backgrounds(:one)
  end

  test "should get index" do
    get education_backgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_education_background_url
    assert_response :success
  end

  test "should create education_background" do
    assert_difference('EducationBackground.count') do
      post education_backgrounds_url, params: { education_background: { highest_education_level: @education_background.highest_education_level, university_of_highest_education_level: @education_background.university_of_highest_education_level, user_id: @education_background.user_id } }
    end

    assert_redirected_to education_background_url(EducationBackground.last)
  end

  test "should show education_background" do
    get education_background_url(@education_background)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_background_url(@education_background)
    assert_response :success
  end

  test "should update education_background" do
    patch education_background_url(@education_background), params: { education_background: { highest_education_level: @education_background.highest_education_level, university_of_highest_education_level: @education_background.university_of_highest_education_level, user_id: @education_background.user_id } }
    assert_redirected_to education_background_url(@education_background)
  end

  test "should destroy education_background" do
    assert_difference('EducationBackground.count', -1) do
      delete education_background_url(@education_background)
    end

    assert_redirected_to education_backgrounds_url
  end
end
