require 'test_helper'

class VendedorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendedor" do
    assert_difference('Vendedor.count') do
      post :create, :vendedor => { }
    end

    assert_redirected_to vendedor_path(assigns(:vendedor))
  end

  test "should show vendedor" do
    get :show, :id => vendedors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vendedors(:one).to_param
    assert_response :success
  end

  test "should update vendedor" do
    put :update, :id => vendedors(:one).to_param, :vendedor => { }
    assert_redirected_to vendedor_path(assigns(:vendedor))
  end

  test "should destroy vendedor" do
    assert_difference('Vendedor.count', -1) do
      delete :destroy, :id => vendedors(:one).to_param
    end

    assert_redirected_to vendedors_path
  end
end
