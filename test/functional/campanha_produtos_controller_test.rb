require 'test_helper'

class CampanhaProdutosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanha_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanha_produto" do
    assert_difference('CampanhaProduto.count') do
      post :create, :campanha_produto => { }
    end

    assert_redirected_to campanha_produto_path(assigns(:campanha_produto))
  end

  test "should show campanha_produto" do
    get :show, :id => campanha_produtos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanha_produtos(:one).to_param
    assert_response :success
  end

  test "should update campanha_produto" do
    put :update, :id => campanha_produtos(:one).to_param, :campanha_produto => { }
    assert_redirected_to campanha_produto_path(assigns(:campanha_produto))
  end

  test "should destroy campanha_produto" do
    assert_difference('CampanhaProduto.count', -1) do
      delete :destroy, :id => campanha_produtos(:one).to_param
    end

    assert_redirected_to campanha_produtos_path
  end
end
