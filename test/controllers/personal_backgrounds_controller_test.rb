require 'test_helper'

class PersonalBackgroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_background = personal_backgrounds(:one)
  end

  test "should get index" do
    get personal_backgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_background_url
    assert_response :success
  end

  test "should create personal_background" do
    assert_difference('PersonalBackground.count') do
      post personal_backgrounds_url, params: { personal_background: { age: @personal_background.age, current_employer: @personal_background.current_employer, current_job_title: @personal_background.current_job_title, date_of_birth: @personal_background.date_of_birth, email: @personal_background.email, gender: @personal_background.gender, home_addess: @personal_background.home_addess, phone: @personal_background.phone, user_id: @personal_background.user_id } }
    end

    assert_redirected_to personal_background_url(PersonalBackground.last)
  end

  test "should show personal_background" do
    get personal_background_url(@personal_background)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_background_url(@personal_background)
    assert_response :success
  end

  test "should update personal_background" do
    patch personal_background_url(@personal_background), params: { personal_background: { age: @personal_background.age, current_employer: @personal_background.current_employer, current_job_title: @personal_background.current_job_title, date_of_birth: @personal_background.date_of_birth, email: @personal_background.email, gender: @personal_background.gender, home_addess: @personal_background.home_addess, phone: @personal_background.phone, user_id: @personal_background.user_id } }
    assert_redirected_to personal_background_url(@personal_background)
  end

  test "should destroy personal_background" do
    assert_difference('PersonalBackground.count', -1) do
      delete personal_background_url(@personal_background)
    end

    assert_redirected_to personal_backgrounds_url
  end
end
