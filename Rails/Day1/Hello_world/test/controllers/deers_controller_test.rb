require 'test_helper'

class DeersControllerTest < ActionController::TestCase
  setup do
    @deer = deers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deer" do
    assert_difference('Deer.count') do
      post :create, deer: { age: @deer.age, name: @deer.name }
    end

    assert_redirected_to deer_path(assigns(:deer))
  end

  test "should show deer" do
    get :show, id: @deer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deer
    assert_response :success
  end

  test "should update deer" do
    patch :update, id: @deer, deer: { age: @deer.age, name: @deer.name }
    assert_redirected_to deer_path(assigns(:deer))
  end

  test "should destroy deer" do
    assert_difference('Deer.count', -1) do
      delete :destroy, id: @deer
    end

    assert_redirected_to deers_path
  end
end
