require "test_helper"

class User::InvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_investment = user_investments(:one)
  end

  test "should get index" do
    get user_investments_url
    assert_response :success
  end

  test "should get new" do
    get new_user_investment_url
    assert_response :success
  end

  test "should create user_investment" do
    assert_difference("User::Investment.count") do
      post user_investments_url, params: { user_investment: { amount: @user_investment.amount, investment_date: @user_investment.investment_date, project_id: @user_investment.project_id, user_id: @user_investment.user_id } }
    end

    assert_redirected_to user_investment_url(User::Investment.last)
  end

  test "should show user_investment" do
    get user_investment_url(@user_investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_investment_url(@user_investment)
    assert_response :success
  end

  test "should update user_investment" do
    patch user_investment_url(@user_investment), params: { user_investment: { amount: @user_investment.amount, investment_date: @user_investment.investment_date, project_id: @user_investment.project_id, user_id: @user_investment.user_id } }
    assert_redirected_to user_investment_url(@user_investment)
  end

  test "should destroy user_investment" do
    assert_difference("User::Investment.count", -1) do
      delete user_investment_url(@user_investment)
    end

    assert_redirected_to user_investments_url
  end
end
