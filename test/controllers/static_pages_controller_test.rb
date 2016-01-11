require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | O'Hey!"
  end

  test "should get customer support" do
    get :customer_support
    assert_response :success
    assert_select "title", "Customer Support | O'Hey!"
  end

  test "should get about" do 
  	get :about
  	assert_response :success
  	assert_select "title", "About | O'Hey!"
  end

  test "should get contact" do 
    get :contact
    assert_response :success
    assert_select "title", "Contact | O'Hey!"
  end
end
