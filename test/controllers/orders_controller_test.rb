require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get create" do
    get orders_create_url
    assert_response :success
  end

  test "should get edit" do
    get orders_edit_url
    assert_response :success
  end

  test "should get success" do
    get orders_success_url
    assert_response :success
  end

  test "should get show" do
    get orders_show_url
    assert_response :success
  end

end
