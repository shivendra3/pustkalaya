require 'test_helper'

class TotalbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @totalbook = totalbooks(:one)
  end

  test "should get index" do
    get totalbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_totalbook_url
    assert_response :success
  end

  test "should create totalbook" do
    assert_difference('Totalbook.count') do
      post totalbooks_url, params: { totalbook: { isbn: @totalbook.isbn, issue: @totalbook.issue } }
    end

    assert_redirected_to totalbook_url(Totalbook.last)
  end

  test "should show totalbook" do
    get totalbook_url(@totalbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_totalbook_url(@totalbook)
    assert_response :success
  end

  test "should update totalbook" do
    patch totalbook_url(@totalbook), params: { totalbook: { isbn: @totalbook.isbn, issue: @totalbook.issue } }
    assert_redirected_to totalbook_url(@totalbook)
  end

  test "should destroy totalbook" do
    assert_difference('Totalbook.count', -1) do
      delete totalbook_url(@totalbook)
    end

    assert_redirected_to totalbooks_url
  end
end
