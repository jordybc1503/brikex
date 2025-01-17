require "test_helper"

class Admin::ProjectTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_project_type = admin_project_types(:one)
  end

  test "should get index" do
    get admin_project_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_project_type_url
    assert_response :success
  end

  test "should create admin_project_type" do
    assert_difference("Admin::ProjectType.count") do
      post admin_project_types_url, params: { admin_project_type: { description: @admin_project_type.description, name: @admin_project_type.name } }
    end

    assert_redirected_to admin_project_type_url(Admin::ProjectType.last)
  end

  test "should show admin_project_type" do
    get admin_project_type_url(@admin_project_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_project_type_url(@admin_project_type)
    assert_response :success
  end

  test "should update admin_project_type" do
    patch admin_project_type_url(@admin_project_type), params: { admin_project_type: { description: @admin_project_type.description, name: @admin_project_type.name } }
    assert_redirected_to admin_project_type_url(@admin_project_type)
  end

  test "should destroy admin_project_type" do
    assert_difference("Admin::ProjectType.count", -1) do
      delete admin_project_type_url(@admin_project_type)
    end

    assert_redirected_to admin_project_types_url
  end
end
