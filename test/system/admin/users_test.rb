require "application_system_test_case"

class Admin::UsersTest < ApplicationSystemTestCase
  setup do
    @admin_user = admin_users(:one)
  end

  test "visiting the index" do
    visit admin_users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit admin_users_url
    click_on "New user"

    fill_in "Country code", with: @admin_user.country_code
    fill_in "Email", with: @admin_user.email
    fill_in "First name", with: @admin_user.first_name
    fill_in "Last name", with: @admin_user.last_name
    fill_in "Phone number", with: @admin_user.phone_number
    fill_in "Phone prefix", with: @admin_user.phone_prefix
    fill_in "Preferred language", with: @admin_user.preferred_language
    fill_in "Second last name", with: @admin_user.second_last_name
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit admin_user_url(@admin_user)
    click_on "Edit this user", match: :first

    fill_in "Country code", with: @admin_user.country_code
    fill_in "Email", with: @admin_user.email
    fill_in "First name", with: @admin_user.first_name
    fill_in "Last name", with: @admin_user.last_name
    fill_in "Phone number", with: @admin_user.phone_number
    fill_in "Phone prefix", with: @admin_user.phone_prefix
    fill_in "Preferred language", with: @admin_user.preferred_language
    fill_in "Second last name", with: @admin_user.second_last_name
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit admin_user_url(@admin_user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
