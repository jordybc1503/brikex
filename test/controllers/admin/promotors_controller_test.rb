require "test_helper"

class Admin::PromotorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_promotor = admin_promotors(:one)
  end

  test "should get index" do
    get admin_promotors_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_promotor_url
    assert_response :success
  end

  test "should create admin_promotor" do
    assert_difference("Admin::Promotor.count") do
      post admin_promotors_url, params: { admin_promotor: { average_return_rate: @admin_promotor.average_return_rate, company_type: @admin_promotor.company_type, contact_person: @admin_promotor.contact_person, email: @admin_promotor.email, headquarters: @admin_promotor.headquarters, name: @admin_promotor.name, number_of_investors: @admin_promotor.number_of_investors, phone: @admin_promotor.phone, registered_address: @admin_promotor.registered_address, registration_number: @admin_promotor.registration_number, tax_id: @admin_promotor.tax_id, total_raised_funds: @admin_promotor.total_raised_funds, website: @admin_promotor.website, years_in_business: @admin_promotor.years_in_business } }
    end

    assert_redirected_to admin_promotor_url(Admin::Promotor.last)
  end

  test "should show admin_promotor" do
    get admin_promotor_url(@admin_promotor)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_promotor_url(@admin_promotor)
    assert_response :success
  end

  test "should update admin_promotor" do
    patch admin_promotor_url(@admin_promotor), params: { admin_promotor: { average_return_rate: @admin_promotor.average_return_rate, company_type: @admin_promotor.company_type, contact_person: @admin_promotor.contact_person, email: @admin_promotor.email, headquarters: @admin_promotor.headquarters, name: @admin_promotor.name, number_of_investors: @admin_promotor.number_of_investors, phone: @admin_promotor.phone, registered_address: @admin_promotor.registered_address, registration_number: @admin_promotor.registration_number, tax_id: @admin_promotor.tax_id, total_raised_funds: @admin_promotor.total_raised_funds, website: @admin_promotor.website, years_in_business: @admin_promotor.years_in_business } }
    assert_redirected_to admin_promotor_url(@admin_promotor)
  end

  test "should destroy admin_promotor" do
    assert_difference("Admin::Promotor.count", -1) do
      delete admin_promotor_url(@admin_promotor)
    end

    assert_redirected_to admin_promotors_url
  end
end
