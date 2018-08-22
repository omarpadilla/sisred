require 'test_helper'

class OperacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operacione = operaciones(:one)
  end

  test "should get index" do
    get operaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_operacione_url
    assert_response :success
  end

  test "should create operacione" do
    assert_difference('Operacione.count') do
      post operaciones_url, params: { operacione: { cliente: @operacione.cliente, pedimento: @operacione.pedimento, referencia: @operacione.referencia } }
    end

    assert_redirected_to operacione_url(Operacione.last)
  end

  test "should show operacione" do
    get operacione_url(@operacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_operacione_url(@operacione)
    assert_response :success
  end

  test "should update operacione" do
    patch operacione_url(@operacione), params: { operacione: { cliente: @operacione.cliente, pedimento: @operacione.pedimento, referencia: @operacione.referencia } }
    assert_redirected_to operacione_url(@operacione)
  end

  test "should destroy operacione" do
    assert_difference('Operacione.count', -1) do
      delete operacione_url(@operacione)
    end

    assert_redirected_to operaciones_url
  end
end
