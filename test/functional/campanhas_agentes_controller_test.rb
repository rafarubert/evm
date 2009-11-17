require 'test_helper'

class CampanhasAgentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanhas_agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanhas_agente" do
    assert_difference('CampanhasAgente.count') do
      post :create, :campanhas_agente => { }
    end

    assert_redirected_to campanhas_agente_path(assigns(:campanhas_agente))
  end

  test "should show campanhas_agente" do
    get :show, :id => campanhas_agentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanhas_agentes(:one).to_param
    assert_response :success
  end

  test "should update campanhas_agente" do
    put :update, :id => campanhas_agentes(:one).to_param, :campanhas_agente => { }
    assert_redirected_to campanhas_agente_path(assigns(:campanhas_agente))
  end

  test "should destroy campanhas_agente" do
    assert_difference('CampanhasAgente.count', -1) do
      delete :destroy, :id => campanhas_agentes(:one).to_param
    end

    assert_redirected_to campanhas_agentes_path
  end
end
