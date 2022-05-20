require 'test_helper'

class ResidenciasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residencia = residencias(:one)
  end

  test "should get index" do
    get residencias_url
    assert_response :success
  end

  test "should get new" do
    get new_residencia_url
    assert_response :success
  end

  test "should create residencia" do
    assert_difference('Residencia.count') do
      post residencias_url, params: { residencia: { dpto: @residencia.dpto, numero: @residencia.numero, piso: @residencia.piso, registro_id: @residencia.registro_id } }
    end

    assert_redirected_to residencia_url(Residencia.last)
  end

  test "should show residencia" do
    get residencia_url(@residencia)
    assert_response :success
  end

  test "should get edit" do
    get edit_residencia_url(@residencia)
    assert_response :success
  end

  test "should update residencia" do
    patch residencia_url(@residencia), params: { residencia: { dpto: @residencia.dpto, numero: @residencia.numero, piso: @residencia.piso, registro_id: @residencia.registro_id } }
    assert_redirected_to residencia_url(@residencia)
  end

  test "should destroy residencia" do
    assert_difference('Residencia.count', -1) do
      delete residencia_url(@residencia)
    end

    assert_redirected_to residencias_url
  end
end
