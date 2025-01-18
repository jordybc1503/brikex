require "application_system_test_case"

class User::InvestmentsTest < ApplicationSystemTestCase
  setup do
    @user_investment = user_investments(:one)
  end

  test "visiting the index" do
    visit user_investments_url
    assert_selector "h1", text: "Investments"
  end

  test "should create investment" do
    visit user_investments_url
    click_on "New investment"

    fill_in "Amount", with: @user_investment.amount
    fill_in "Investment date", with: @user_investment.investment_date
    fill_in "Project", with: @user_investment.project_id
    fill_in "User", with: @user_investment.user_id
    click_on "Create Investment"

    assert_text "Investment was successfully created"
    click_on "Back"
  end

  test "should update Investment" do
    visit user_investment_url(@user_investment)
    click_on "Edit this investment", match: :first

    fill_in "Amount", with: @user_investment.amount
    fill_in "Investment date", with: @user_investment.investment_date
    fill_in "Project", with: @user_investment.project_id
    fill_in "User", with: @user_investment.user_id
    click_on "Update Investment"

    assert_text "Investment was successfully updated"
    click_on "Back"
  end

  test "should destroy Investment" do
    visit user_investment_url(@user_investment)
    click_on "Destroy this investment", match: :first

    assert_text "Investment was successfully destroyed"
  end
end
