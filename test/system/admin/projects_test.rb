require "application_system_test_case"

class Admin::ProjectsTest < ApplicationSystemTestCase
  setup do
    @admin_project = admin_projects(:one)
  end

  test "visiting the index" do
    visit admin_projects_url
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit admin_projects_url
    click_on "New project"

    fill_in "Admin", with: @admin_project.admin_id
    fill_in "Description", with: @admin_project.description
    fill_in "Duration", with: @admin_project.duration
    fill_in "Location", with: @admin_project.location
    fill_in "Name", with: @admin_project.name
    fill_in "Project type", with: @admin_project.project_type_id
    fill_in "Promotor", with: @admin_project.promotor_id
    fill_in "Raised amount", with: @admin_project.raised_amount
    fill_in "Return rate", with: @admin_project.return_rate
    fill_in "Status", with: @admin_project.status
    fill_in "Target amount", with: @admin_project.target_amount
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "should update Project" do
    visit admin_project_url(@admin_project)
    click_on "Edit this project", match: :first

    fill_in "Admin", with: @admin_project.admin_id
    fill_in "Description", with: @admin_project.description
    fill_in "Duration", with: @admin_project.duration
    fill_in "Location", with: @admin_project.location
    fill_in "Name", with: @admin_project.name
    fill_in "Project type", with: @admin_project.project_type_id
    fill_in "Promotor", with: @admin_project.promotor_id
    fill_in "Raised amount", with: @admin_project.raised_amount
    fill_in "Return rate", with: @admin_project.return_rate
    fill_in "Status", with: @admin_project.status
    fill_in "Target amount", with: @admin_project.target_amount
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "should destroy Project" do
    visit admin_project_url(@admin_project)
    click_on "Destroy this project", match: :first

    assert_text "Project was successfully destroyed"
  end
end
