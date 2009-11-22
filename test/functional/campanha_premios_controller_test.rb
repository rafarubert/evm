require 'test_helper'

class CampanhaPremiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanha_premios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanha_premio" do
    assert_difference('CampanhaPremio.count') do
      post :create, :campanha_premio => { }
    end

    assert_redirected_to campanha_premio_path(assigns(:campanha_premio))
  end

  test "should show campanha_premio" do
    get :show, :id => campanha_premios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanha_premios(:one).to_param
    assert_response :success
  end

  test "should update campanha_premio" do
    put :update, :id => campanha_premios(:one).to_param, :campanha_premio => { }
    assert_redirected_to campanha_premio_path(assigns(:campanha_premio))
  end

  test "should destroy campanha_premio" do
    assert_difference('CampanhaPremio.count', -1) do
      delete :destroy, :id => campanha_premios(:one).to_param
    end

    assert_redirected_to campanha_premios_path
  end
end
