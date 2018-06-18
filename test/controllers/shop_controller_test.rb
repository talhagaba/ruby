require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_index_url
    assert_response :success
  end

  test "should get contact" do
    get shop_contact_url
    assert_response :success
  end

  test "should get about" do
    get shop_about_url
    assert_response :success
  end

  test "should get login" do
    get shop_login_url
    assert_response :success
  end

  test "should get checkout" do
    get shop_checkout_url
    assert_response :success
  end

  test "should get cart" do
    get shop_cart_url
    assert_response :success
  end

  test "should get product" do
    get shop_product_url
    assert_response :success
  end

  test "should get productDetail" do
    get shop_productDetail_url
    assert_response :success
  end

end
