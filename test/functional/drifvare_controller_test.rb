require 'test_helper'

class DrifvareControllerTest < ActionController::TestCase
  setup do
    @drifvare = drifvare(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drifvare)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drifvare" do
    assert_difference('Drifvare.count') do
      post :create, drifvare: { adress: @drifvare.adress, email: @drifvare.email, namn: @drifvare.namn }
    end

    assert_redirected_to drifvare_path(assigns(:drifvare))
  end

  test "should show drifvare" do
    get :show, id: @drifvare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drifvare
    assert_response :success
  end

  test "should update drifvare" do
    put :update, id: @drifvare, drifvare: { adress: @drifvare.adress, email: @drifvare.email, namn: @drifvare.namn }
    assert_redirected_to drifvare_path(assigns(:drifvare))
  end

  test "should destroy drifvare" do
    assert_difference('Drifvare.count', -1) do
      delete :destroy, id: @drifvare
    end

    assert_redirected_to drifvare_index_path
  end
end
