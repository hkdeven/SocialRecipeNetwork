require 'test_helper'

class ResipesControllerTest < ActionController::TestCase
  setup do
    @resipe = resipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resipe" do
    assert_difference('Resipe.count') do
      post :create, resipe: { controller: @resipe.controller }
    end

    assert_redirected_to resipe_path(assigns(:resipe))
  end

  test "should show resipe" do
    get :show, id: @resipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resipe
    assert_response :success
  end

  test "should update resipe" do
    patch :update, id: @resipe, resipe: { controller: @resipe.controller }
    assert_redirected_to resipe_path(assigns(:resipe))
  end

  test "should destroy resipe" do
    assert_difference('Resipe.count', -1) do
      delete :destroy, id: @resipe
    end

    assert_redirected_to resipes_path
  end
end
