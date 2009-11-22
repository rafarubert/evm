require 'test_helper'

class CampanhaVendedoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanha_vendedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanha_vendedor" do
    assert_difference('CampanhaVendedor.count') do
      post :create, :campanha_vendedor => { }
    end

    assert_redirected_to campanha_vendedor_path(assigns(:campanha_vendedor))
  end

  test "should show campanha_vendedor" do
    get :show, :id => campanha_vendedores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanha_vendedores(:one).to_param
    assert_response :success
  end

  test "should update campanha_vendedor" do
    put :update, :id => campanha_vendedores(:one).to_param, :campanha_vendedor => { }
    assert_redirected_to campanha_vendedor_path(assigns(:campanha_vendedor))
  end

  test "should destroy campanha_vendedor" do
    assert_difference('CampanhaVendedor.count', -1) do
      delete :destroy, :id => campanha_vendedores(:one).to_param
    end

    assert_redirected_to campanha_vendedores_path
  end
end
