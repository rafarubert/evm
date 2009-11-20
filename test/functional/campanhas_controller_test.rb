require 'test_helper'

class CampanhasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanha" do
    assert_difference('Campanha.count') do
      post :create, :campanha => { }
    end

    assert_redirected_to campanha_path(assigns(:campanha))
  end

  test "should show campanha" do
    get :show, :id => campanhas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanhas(:one).to_param
    assert_response :success
  end

  test "should update campanha" do
    put :update, :id => campanhas(:one).to_param, :campanha => { }
    assert_redirected_to campanha_path(assigns(:campanha))
  end

  test "should destroy campanha" do
    assert_difference('Campanha.count', -1) do
      delete :destroy, :id => campanhas(:one).to_param
    end

    assert_redirected_to campanhas_path
  end
end
