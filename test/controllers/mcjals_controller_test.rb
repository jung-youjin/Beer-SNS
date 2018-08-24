require 'test_helper'

class McjalsControllerTest < ActionController::TestCase
  setup do
    @mcjal = mcjals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcjals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcjal" do
    assert_difference('Mcjal.count') do
      post :create, mcjal: { content: @mcjal.content, email: @mcjal.email, review_count: @mcjal.review_count, title: @mcjal.title }
    end

    assert_redirected_to mcjal_path(assigns(:mcjal))
  end

  test "should show mcjal" do
    get :show, id: @mcjal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mcjal
    assert_response :success
  end

  test "should update mcjal" do
    patch :update, id: @mcjal, mcjal: { content: @mcjal.content, email: @mcjal.email, review_count: @mcjal.review_count, title: @mcjal.title }
    assert_redirected_to mcjal_path(assigns(:mcjal))
  end

  test "should destroy mcjal" do
    assert_difference('Mcjal.count', -1) do
      delete :destroy, id: @mcjal
    end

    assert_redirected_to mcjals_path
  end
end
