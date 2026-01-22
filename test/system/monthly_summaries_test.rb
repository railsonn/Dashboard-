require "application_system_test_case"

class MonthlySummariesTest < ApplicationSystemTestCase
  setup do
    @monthly_summary = monthly_summaries(:one)
  end

  test "visiting the index" do
    visit monthly_summaries_url
    assert_selector "h1", text: "Monthly summaries"
  end

  test "should create monthly summary" do
    visit monthly_summaries_url
    click_on "New monthly summary"

    fill_in "Balance", with: @monthly_summary.balance
    fill_in "Month", with: @monthly_summary.month
    fill_in "Total expense", with: @monthly_summary.total_expense
    fill_in "Total income", with: @monthly_summary.total_income
    fill_in "User", with: @monthly_summary.user_id
    fill_in "Year", with: @monthly_summary.year
    click_on "Create Monthly summary"

    assert_text "Monthly summary was successfully created"
    click_on "Back"
  end

  test "should update Monthly summary" do
    visit monthly_summary_url(@monthly_summary)
    click_on "Edit this monthly summary", match: :first

    fill_in "Balance", with: @monthly_summary.balance
    fill_in "Month", with: @monthly_summary.month
    fill_in "Total expense", with: @monthly_summary.total_expense
    fill_in "Total income", with: @monthly_summary.total_income
    fill_in "User", with: @monthly_summary.user_id
    fill_in "Year", with: @monthly_summary.year
    click_on "Update Monthly summary"

    assert_text "Monthly summary was successfully updated"
    click_on "Back"
  end

  test "should destroy Monthly summary" do
    visit monthly_summary_url(@monthly_summary)
    click_on "Destroy this monthly summary", match: :first

    assert_text "Monthly summary was successfully destroyed"
  end
end
