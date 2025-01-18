require "test_helper"

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = admin_users(:one)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_url
    assert_response :success
  end

  test "should create admin_user" do
    assert_difference("Admin::User.count") do
      post admin_users_url, params: { admin_user: { country_code: @admin_user.country_code, email: @admin_user.email, first_name: @admin_user.first_name, last_name: @admin_user.last_name, phone_number: @admin_user.phone_number, phone_prefix: @admin_user.phone_prefix, preferred_language: @admin_user.preferred_language, second_last_name: @admin_user.second_last_name } }
    end

    assert_redirected_to admin_user_url(Admin::User.last)
  end

  test "should show admin_user" do
    get admin_user_url(@admin_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_url(@admin_user)
    assert_response :success
  end

  test "should update admin_user" do
    patch admin_user_url(@admin_user), params: { admin_user: { country_code: @admin_user.country_code, email: @admin_user.email, first_name: @admin_user.first_name, last_name: @admin_user.last_name, phone_number: @admin_user.phone_number, phone_prefix: @admin_user.phone_prefix, preferred_language: @admin_user.preferred_language, second_last_name: @admin_user.second_last_name } }
    assert_redirected_to admin_user_url(@admin_user)
  end

  test "should destroy admin_user" do
    assert_difference("Admin::User.count", -1) do
      delete admin_user_url(@admin_user)
    end

    assert_redirected_to admin_users_url
  end
end
