require 'test_helper'

class DrifverierControllerTest < ActionController::TestCase
  setup do
    @drifveri = drifverier(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drifverier)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drifveri" do
    assert_difference('Drifveri.count') do
      post :create, drifveri: { archzero: @drifveri.archzero, direktifdrif: @drifveri.direktifdrif, indrif: @drifveri.indrif, ofverdrif: @drifveri.ofverdrif, skylt: @drifveri.skylt, tidsfordrif: @drifveri.tidsfordrif, year: @drifveri.year }
    end

    assert_redirected_to drifveri_path(assigns(:drifveri))
  end

  test "should show drifveri" do
    get :show, id: @drifveri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drifveri
    assert_response :success
  end

  test "should update drifveri" do
    put :update, id: @drifveri, drifveri: { archzero: @drifveri.archzero, direktifdrif: @drifveri.direktifdrif, indrif: @drifveri.indrif, ofverdrif: @drifveri.ofverdrif, skylt: @drifveri.skylt, tidsfordrif: @drifveri.tidsfordrif, year: @drifveri.year }
    assert_redirected_to drifveri_path(assigns(:drifveri))
  end

  test "should destroy drifveri" do
    assert_difference('Drifveri.count', -1) do
      delete :destroy, id: @drifveri
    end

    assert_redirected_to drifverier_path
  end
end
