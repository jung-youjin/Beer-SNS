require 'test_helper'

class EnjoyingsControllerTest < ActionController::TestCase
  setup do
    @enjoying = enjoyings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enjoyings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enjoying" do
    assert_difference('Enjoying.count') do
      post :create, enjoying: { content: @enjoying.content, email: @enjoying.email, review_count: @enjoying.review_count, title: @enjoying.title }
    end

    assert_redirected_to enjoying_path(assigns(:enjoying))
  end

  test "should show enjoying" do
    get :show, id: @enjoying
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enjoying
    assert_response :success
  end

  test "should update enjoying" do
    patch :update, id: @enjoying, enjoying: { content: @enjoying.content, email: @enjoying.email, review_count: @enjoying.review_count, title: @enjoying.title }
    assert_redirected_to enjoying_path(assigns(:enjoying))
  end

  test "should destroy enjoying" do
    assert_difference('Enjoying.count', -1) do
      delete :destroy, id: @enjoying
    end

    assert_redirected_to enjoyings_path
  end
end
