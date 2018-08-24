require 'test_helper'

class McmilliesControllerTest < ActionController::TestCase
  setup do
    @mcmilly = mcmillies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mcmillies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mcmilly" do
    assert_difference('Mcmillie.count') do
      post :create, mcmilly: { content: @mcmilly.content, email: @mcmilly.email, review_count: @mcmilly.review_count, title: @mcmilly.title }
    end

    assert_redirected_to mcmilly_path(assigns(:mcmilly))
  end

  test "should show mcmilly" do
    get :show, id: @mcmilly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mcmilly
    assert_response :success
  end

  test "should update mcmilly" do
    patch :update, id: @mcmilly, mcmilly: { content: @mcmilly.content, email: @mcmilly.email, review_count: @mcmilly.review_count, title: @mcmilly.title }
    assert_redirected_to mcmilly_path(assigns(:mcmilly))
  end

  test "should destroy mcmilly" do
    assert_difference('Mcmillie.count', -1) do
      delete :destroy, id: @mcmilly
    end

    assert_redirected_to mcmillies_path
  end
end
