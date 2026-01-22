require "test_helper"

class MonthlySummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monthly_summary = monthly_summaries(:one)
  end

  test "should get index" do
    get monthly_summaries_url
    assert_response :success
  end

  test "should get new" do
    get new_monthly_summary_url
    assert_response :success
  end

  test "should create monthly_summary" do
    assert_difference("MonthlySummary.count") do
      post monthly_summaries_url, params: { monthly_summary: { balance: @monthly_summary.balance, month: @monthly_summary.month, total_expense: @monthly_summary.total_expense, total_income: @monthly_summary.total_income, user_id: @monthly_summary.user_id, year: @monthly_summary.year } }
    end

    assert_redirected_to monthly_summary_url(MonthlySummary.last)
  end

  test "should show monthly_summary" do
    get monthly_summary_url(@monthly_summary)
    assert_response :success
  end

  test "should get edit" do
    get edit_monthly_summary_url(@monthly_summary)
    assert_response :success
  end

  test "should update monthly_summary" do
    patch monthly_summary_url(@monthly_summary), params: { monthly_summary: { balance: @monthly_summary.balance, month: @monthly_summary.month, total_expense: @monthly_summary.total_expense, total_income: @monthly_summary.total_income, user_id: @monthly_summary.user_id, year: @monthly_summary.year } }
    assert_redirected_to monthly_summary_url(@monthly_summary)
  end

  test "should destroy monthly_summary" do
    assert_difference("MonthlySummary.count", -1) do
      delete monthly_summary_url(@monthly_summary)
    end

    assert_redirected_to monthly_summaries_url
  end
end
