require 'test_helper'

class ShoppintLsitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoppint_lsit = shoppint_lsits(:one)
  end

  test "should get index" do
    get shoppint_lsits_url
    assert_response :success
  end

  test "should get new" do
    get new_shoppint_lsit_url
    assert_response :success
  end

  test "should create shoppint_lsit" do
    assert_difference('ShoppintLsit.count') do
      post shoppint_lsits_url, params: { shoppint_lsit: { list_name: @shoppint_lsit.list_name } }
    end

    assert_redirected_to shoppint_lsit_url(ShoppintLsit.last)
  end

  test "should show shoppint_lsit" do
    get shoppint_lsit_url(@shoppint_lsit)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoppint_lsit_url(@shoppint_lsit)
    assert_response :success
  end

  test "should update shoppint_lsit" do
    patch shoppint_lsit_url(@shoppint_lsit), params: { shoppint_lsit: { list_name: @shoppint_lsit.list_name } }
    assert_redirected_to shoppint_lsit_url(@shoppint_lsit)
  end

  test "should destroy shoppint_lsit" do
    assert_difference('ShoppintLsit.count', -1) do
      delete shoppint_lsit_url(@shoppint_lsit)
    end

    assert_redirected_to shoppint_lsits_url
  end
end
