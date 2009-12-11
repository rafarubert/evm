require 'test_helper'

class CampanhaAgentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanha_agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campanha_agente" do
    assert_difference('CampanhaAgente.count') do
      post :create, :campanha_agente => { }
    end

    assert_redirected_to campanha_agente_path(assigns(:campanha_agente))
  end

  test "should show campanha_agente" do
    get :show, :id => campanha_agentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => campanha_agentes(:one).to_param
    assert_response :success
  end

  test "should update campanha_agente" do
    put :update, :id => campanha_agentes(:one).to_param, :campanha_agente => { }
    assert_redirected_to campanha_agente_path(assigns(:campanha_agente))
  end

  test "should destroy campanha_agente" do
    assert_difference('CampanhaAgente.count', -1) do
      delete :destroy, :id => campanha_agentes(:one).to_param
    end

    assert_redirected_to campanha_agentes_path
  end
end
