require 'test_helper'

class BrewerypostsControllerTest < ActionController::TestCase
  setup do
    @brewerypost = breweryposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breweryposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewerypost" do
    assert_difference('Brewerypost.count') do
      post :create, brewerypost: { bottlebeer: @brewerypost.bottlebeer, event: @brewerypost.event, menuimage: @brewerypost.menuimage, name: @brewerypost.name, storeimage: @brewerypost.storeimage, tab: @brewerypost.tab }
    end

    assert_redirected_to brewerypost_path(assigns(:brewerypost))
  end

  test "should show brewerypost" do
    get :show, id: @brewerypost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewerypost
    assert_response :success
  end

  test "should update brewerypost" do
    patch :update, id: @brewerypost, brewerypost: { bottlebeer: @brewerypost.bottlebeer, event: @brewerypost.event, menuimage: @brewerypost.menuimage, name: @brewerypost.name, storeimage: @brewerypost.storeimage, tab: @brewerypost.tab }
    assert_redirected_to brewerypost_path(assigns(:brewerypost))
  end

  test "should destroy brewerypost" do
    assert_difference('Brewerypost.count', -1) do
      delete :destroy, id: @brewerypost
    end

    assert_redirected_to breweryposts_path
  end
end
