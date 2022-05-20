require 'test_helper'

class VecinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vecino = vecinos(:one)
  end

  test "should get index" do
    get vecinos_url
    assert_response :success
  end

  test "should get new" do
    get new_vecino_url
    assert_response :success
  end

  test "should create vecino" do
    assert_difference('Vecino.count') do
      post vecinos_url, params: { vecino: { alquiler: @vecino.alquiler, ano_llegada_estimado: @vecino.ano_llegada_estimado, ano_nacimiento: @vecino.ano_nacimiento, ano_nacimiento_estimado: @vecino.ano_nacimiento_estimado, classificacion: @vecino.classificacion, contrib_anual: @vecino.contrib_anual, defectos: @vecino.defectos, dia_nacimiento: @vecino.dia_nacimiento, edad: @vecino.edad, estado: @vecino.estado, mes_nacimiento: @vecino.mes_nacimiento, ocupacion: @vecino.ocupacion, parroquia: @vecino.parroquia, persona_id: @vecino.persona_id, provincia_naturaleza: @vecino.provincia_naturaleza, pueblo_naturaleza: @vecino.pueblo_naturaleza, religion: @vecino.religion, residencia_habitual: @vecino.residencia_habitual, residencia_id: @vecino.residencia_id, sabe_escribir: @vecino.sabe_escribir, sabe_leer: @vecino.sabe_leer, sueldo_anual: @vecino.sueldo_anual, tiempo_residencia: @vecino.tiempo_residencia } }
    end

    assert_redirected_to vecino_url(Vecino.last)
  end

  test "should show vecino" do
    get vecino_url(@vecino)
    assert_response :success
  end

  test "should get edit" do
    get edit_vecino_url(@vecino)
    assert_response :success
  end

  test "should update vecino" do
    patch vecino_url(@vecino), params: { vecino: { alquiler: @vecino.alquiler, ano_llegada_estimado: @vecino.ano_llegada_estimado, ano_nacimiento: @vecino.ano_nacimiento, ano_nacimiento_estimado: @vecino.ano_nacimiento_estimado, classificacion: @vecino.classificacion, contrib_anual: @vecino.contrib_anual, defectos: @vecino.defectos, dia_nacimiento: @vecino.dia_nacimiento, edad: @vecino.edad, estado: @vecino.estado, mes_nacimiento: @vecino.mes_nacimiento, ocupacion: @vecino.ocupacion, parroquia: @vecino.parroquia, persona_id: @vecino.persona_id, provincia_naturaleza: @vecino.provincia_naturaleza, pueblo_naturaleza: @vecino.pueblo_naturaleza, religion: @vecino.religion, residencia_habitual: @vecino.residencia_habitual, residencia_id: @vecino.residencia_id, sabe_escribir: @vecino.sabe_escribir, sabe_leer: @vecino.sabe_leer, sueldo_anual: @vecino.sueldo_anual, tiempo_residencia: @vecino.tiempo_residencia } }
    assert_redirected_to vecino_url(@vecino)
  end

  test "should destroy vecino" do
    assert_difference('Vecino.count', -1) do
      delete vecino_url(@vecino)
    end

    assert_redirected_to vecinos_url
  end
end
