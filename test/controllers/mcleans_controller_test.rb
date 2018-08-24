require 'test_helper'

class McleansControllerTest < ActionController::TestCase
  setup do
    @mclean = mcleans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcleans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mclean" do
    assert_difference('Mclean.count') do
      post :create, mclean: { content: @mclean.content, email: @mclean.email, review_count: @mclean.review_count, title: @mclean.title }
    end

    assert_redirected_to mclean_path(assigns(:mclean))
  end

  test "should show mclean" do
    get :show, id: @mclean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mclean
    assert_response :success
  end

  test "should update mclean" do
    patch :update, id: @mclean, mclean: { content: @mclean.content, email: @mclean.email, review_count: @mclean.review_count, title: @mclean.title }
    assert_redirected_to mclean_path(assigns(:mclean))
  end

  test "should destroy mclean" do
    assert_difference('Mclean.count', -1) do
      delete :destroy, id: @mclean
    end

    assert_redirected_to mcleans_path
  end
end
