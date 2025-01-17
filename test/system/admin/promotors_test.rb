require "application_system_test_case"

class Admin::PromotorsTest < ApplicationSystemTestCase
  setup do
    @admin_promotor = admin_promotors(:one)
  end

  test "visiting the index" do
    visit admin_promotors_url
    assert_selector "h1", text: "Promotors"
  end

  test "should create promotor" do
    visit admin_promotors_url
    click_on "New promotor"

    fill_in "Average return rate", with: @admin_promotor.average_return_rate
    fill_in "Company type", with: @admin_promotor.company_type
    fill_in "Contact person", with: @admin_promotor.contact_person
    fill_in "Email", with: @admin_promotor.email
    fill_in "Headquarters", with: @admin_promotor.headquarters
    fill_in "Name", with: @admin_promotor.name
    fill_in "Number of investors", with: @admin_promotor.number_of_investors
    fill_in "Phone", with: @admin_promotor.phone
    fill_in "Registered address", with: @admin_promotor.registered_address
    fill_in "Registration number", with: @admin_promotor.registration_number
    fill_in "Tax", with: @admin_promotor.tax_id
    fill_in "Total raised funds", with: @admin_promotor.total_raised_funds
    fill_in "Website", with: @admin_promotor.website
    fill_in "Years in business", with: @admin_promotor.years_in_business
    click_on "Create Promotor"

    assert_text "Promotor was successfully created"
    click_on "Back"
  end

  test "should update Promotor" do
    visit admin_promotor_url(@admin_promotor)
    click_on "Edit this promotor", match: :first

    fill_in "Average return rate", with: @admin_promotor.average_return_rate
    fill_in "Company type", with: @admin_promotor.company_type
    fill_in "Contact person", with: @admin_promotor.contact_person
    fill_in "Email", with: @admin_promotor.email
    fill_in "Headquarters", with: @admin_promotor.headquarters
    fill_in "Name", with: @admin_promotor.name
    fill_in "Number of investors", with: @admin_promotor.number_of_investors
    fill_in "Phone", with: @admin_promotor.phone
    fill_in "Registered address", with: @admin_promotor.registered_address
    fill_in "Registration number", with: @admin_promotor.registration_number
    fill_in "Tax", with: @admin_promotor.tax_id
    fill_in "Total raised funds", with: @admin_promotor.total_raised_funds
    fill_in "Website", with: @admin_promotor.website
    fill_in "Years in business", with: @admin_promotor.years_in_business
    click_on "Update Promotor"

    assert_text "Promotor was successfully updated"
    click_on "Back"
  end

  test "should destroy Promotor" do
    visit admin_promotor_url(@admin_promotor)
    click_on "Destroy this promotor", match: :first

    assert_text "Promotor was successfully destroyed"
  end
end
