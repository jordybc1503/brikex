require "test_helper"

class Admin::ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_project = admin_projects(:one)
  end

  test "should get index" do
    get admin_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_project_url
    assert_response :success
  end

  test "should create admin_project" do
    assert_difference("Admin::Project.count") do
      post admin_projects_url, params: { admin_project: { admin_id: @admin_project.admin_id, description: @admin_project.description, duration: @admin_project.duration, location: @admin_project.location, name: @admin_project.name, project_type_id: @admin_project.project_type_id, promotor_id: @admin_project.promotor_id, raised_amount: @admin_project.raised_amount, return_rate: @admin_project.return_rate, status: @admin_project.status, target_amount: @admin_project.target_amount } }
    end

    assert_redirected_to admin_project_url(Admin::Project.last)
  end

  test "should show admin_project" do
    get admin_project_url(@admin_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_project_url(@admin_project)
    assert_response :success
  end

  test "should update admin_project" do
    patch admin_project_url(@admin_project), params: { admin_project: { admin_id: @admin_project.admin_id, description: @admin_project.description, duration: @admin_project.duration, location: @admin_project.location, name: @admin_project.name, project_type_id: @admin_project.project_type_id, promotor_id: @admin_project.promotor_id, raised_amount: @admin_project.raised_amount, return_rate: @admin_project.return_rate, status: @admin_project.status, target_amount: @admin_project.target_amount } }
    assert_redirected_to admin_project_url(@admin_project)
  end

  test "should destroy admin_project" do
    assert_difference("Admin::Project.count", -1) do
      delete admin_project_url(@admin_project)
    end

    assert_redirected_to admin_projects_url
  end
end
