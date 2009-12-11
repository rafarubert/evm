require 'test_helper'

class DistribuidoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distribuidores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distribuidor" do
    assert_difference('Distribuidor.count') do
      post :create, :distribuidor => { }
    end

    assert_redirected_to distribuidor_path(assigns(:distribuidor))
  end

  test "should show distribuidor" do
    get :show, :id => distribuidores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => distribuidores(:one).to_param
    assert_response :success
  end

  test "should update distribuidor" do
    put :update, :id => distribuidores(:one).to_param, :distribuidor => { }
    assert_redirected_to distribuidor_path(assigns(:distribuidor))
  end

  test "should destroy distribuidor" do
    assert_difference('Distribuidor.count', -1) do
      delete :destroy, :id => distribuidores(:one).to_param
    end

    assert_redirected_to distribuidores_path
  end
end
