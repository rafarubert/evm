require 'test_helper'

class VendedoresRankingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendedores_rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendedores_ranking" do
    assert_difference('VendedoresRanking.count') do
      post :create, :vendedores_ranking => { }
    end

    assert_redirected_to vendedores_ranking_path(assigns(:vendedores_ranking))
  end

  test "should show vendedores_ranking" do
    get :show, :id => vendedores_rankings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vendedores_rankings(:one).to_param
    assert_response :success
  end

  test "should update vendedores_ranking" do
    put :update, :id => vendedores_rankings(:one).to_param, :vendedores_ranking => { }
    assert_redirected_to vendedores_ranking_path(assigns(:vendedores_ranking))
  end

  test "should destroy vendedores_ranking" do
    assert_difference('VendedoresRanking.count', -1) do
      delete :destroy, :id => vendedores_rankings(:one).to_param
    end

    assert_redirected_to vendedores_rankings_path
  end
end
