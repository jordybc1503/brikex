require "application_system_test_case"

class Admin::ProjectTypesTest < ApplicationSystemTestCase
  setup do
    @admin_project_type = admin_project_types(:one)
  end

  test "visiting the index" do
    visit admin_project_types_url
    assert_selector "h1", text: "Project types"
  end

  test "should create project type" do
    visit admin_project_types_url
    click_on "New project type"

    fill_in "Description", with: @admin_project_type.description
    fill_in "Name", with: @admin_project_type.name
    click_on "Create Project type"

    assert_text "Project type was successfully created"
    click_on "Back"
  end

  test "should update Project type" do
    visit admin_project_type_url(@admin_project_type)
    click_on "Edit this project type", match: :first

    fill_in "Description", with: @admin_project_type.description
    fill_in "Name", with: @admin_project_type.name
    click_on "Update Project type"

    assert_text "Project type was successfully updated"
    click_on "Back"
  end

  test "should destroy Project type" do
    visit admin_project_type_url(@admin_project_type)
    click_on "Destroy this project type", match: :first

    assert_text "Project type was successfully destroyed"
  end
end
