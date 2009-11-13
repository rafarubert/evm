require 'test_helper'

class AgentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agente" do
    assert_difference('Agente.count') do
      post :create, :agente => { }
    end

    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should show agente" do
    get :show, :id => agentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => agentes(:one).to_param
    assert_response :success
  end

  test "should update agente" do
    put :update, :id => agentes(:one).to_param, :agente => { }
    assert_redirected_to agente_path(assigns(:agente))
  end

  test "should destroy agente" do
    assert_difference('Agente.count', -1) do
      delete :destroy, :id => agentes(:one).to_param
    end

    assert_redirected_to agentes_path
  end
end
