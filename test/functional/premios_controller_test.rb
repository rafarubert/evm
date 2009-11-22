require 'test_helper'

class PremiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:premios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create premio" do
    assert_difference('Premio.count') do
      post :create, :premio => { }
    end

    assert_redirected_to premio_path(assigns(:premio))
  end

  test "should show premio" do
    get :show, :id => premios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => premios(:one).to_param
    assert_response :success
  end

  test "should update premio" do
    put :update, :id => premios(:one).to_param, :premio => { }
    assert_redirected_to premio_path(assigns(:premio))
  end

  test "should destroy premio" do
    assert_difference('Premio.count', -1) do
      delete :destroy, :id => premios(:one).to_param
    end

    assert_redirected_to premios_path
  end
end
