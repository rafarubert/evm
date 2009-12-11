require 'test_helper'

class LanceUnicoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lance_unico)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lance_unico" do
    assert_difference('LanceUnico.count') do
      post :create, :lance_unico => { }
    end

    assert_redirected_to lance_unico_path(assigns(:lance_unico))
  end

  test "should show lance_unico" do
    get :show, :id => lance_unico(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lance_unico(:one).to_param
    assert_response :success
  end

  test "should update lance_unico" do
    put :update, :id => lance_unico(:one).to_param, :lance_unico => { }
    assert_redirected_to lance_unico_path(assigns(:lance_unico))
  end

  test "should destroy lance_unico" do
    assert_difference('LanceUnico.count', -1) do
      delete :destroy, :id => lance_unico(:one).to_param
    end

    assert_redirected_to lance_unico_path
  end
end
