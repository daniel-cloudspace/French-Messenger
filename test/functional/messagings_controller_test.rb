require 'test_helper'

class MessagingsControllerTest < ActionController::TestCase
  setup do
    @messaging = messagings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messagings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messaging" do
    assert_difference('Messaging.count') do
      post :create, :messaging => @messaging.attributes
    end

    assert_redirected_to messaging_path(assigns(:messaging))
  end

  test "should show messaging" do
    get :show, :id => @messaging.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @messaging.to_param
    assert_response :success
  end

  test "should update messaging" do
    put :update, :id => @messaging.to_param, :messaging => @messaging.attributes
    assert_redirected_to messaging_path(assigns(:messaging))
  end

  test "should destroy messaging" do
    assert_difference('Messaging.count', -1) do
      delete :destroy, :id => @messaging.to_param
    end

    assert_redirected_to messagings_path
  end
end
