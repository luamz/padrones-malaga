require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get personas_url
    assert_response :success
  end

  test "should get new" do
    get new_persona_url
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post personas_url, params: { persona: { apellido1: @persona.apellido1, apellido2: @persona.apellido2, bautismo: @persona.bautismo, ciudad_defuncion: @persona.ciudad_defuncion, ciudad_nacimiento: @persona.ciudad_nacimiento, confirmacion_bautismo: @persona.confirmacion_bautismo, confirmacion_defuncion: @persona.confirmacion_defuncion, confirmacion_nacimiento: @persona.confirmacion_nacimiento, defuncion: @persona.defuncion, nacimiento: @persona.nacimiento, nombre: @persona.nombre, parroquia: @persona.parroquia } }
    end

    assert_redirected_to persona_url(Persona.last)
  end

  test "should show persona" do
    get persona_url(@persona)
    assert_response :success
  end

  test "should get edit" do
    get edit_persona_url(@persona)
    assert_response :success
  end

  test "should update persona" do
    patch persona_url(@persona), params: { persona: { apellido1: @persona.apellido1, apellido2: @persona.apellido2, bautismo: @persona.bautismo, ciudad_defuncion: @persona.ciudad_defuncion, ciudad_nacimiento: @persona.ciudad_nacimiento, confirmacion_bautismo: @persona.confirmacion_bautismo, confirmacion_defuncion: @persona.confirmacion_defuncion, confirmacion_nacimiento: @persona.confirmacion_nacimiento, defuncion: @persona.defuncion, nacimiento: @persona.nacimiento, nombre: @persona.nombre, parroquia: @persona.parroquia } }
    assert_redirected_to persona_url(@persona)
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete persona_url(@persona)
    end

    assert_redirected_to personas_url
  end
end
