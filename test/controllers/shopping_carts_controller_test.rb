require 'test_helper'

class ShoppingCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get shopping_carts_add_url
    assert_response :success
  end

end
