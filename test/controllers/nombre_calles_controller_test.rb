require 'test_helper'

class NombreCallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nombre_calle = nombre_calles(:one)
  end

  test "should get index" do
    get nombre_calles_url
    assert_response :success
  end

  test "should get new" do
    get new_nombre_calle_url
    assert_response :success
  end

  test "should create nombre_calle" do
    assert_difference('NombreCalle.count') do
      post nombre_calles_url, params: { nombre_calle: { ano_fin: @nombre_calle.ano_fin, ano_inicio: @nombre_calle.ano_inicio, calle_id: @nombre_calle.calle_id, nombre_calle: @nombre_calle.nombre_calle } }
    end

    assert_redirected_to nombre_calle_url(NombreCalle.last)
  end

  test "should show nombre_calle" do
    get nombre_calle_url(@nombre_calle)
    assert_response :success
  end

  test "should get edit" do
    get edit_nombre_calle_url(@nombre_calle)
    assert_response :success
  end

  test "should update nombre_calle" do
    patch nombre_calle_url(@nombre_calle), params: { nombre_calle: { ano_fin: @nombre_calle.ano_fin, ano_inicio: @nombre_calle.ano_inicio, calle_id: @nombre_calle.calle_id, nombre_calle: @nombre_calle.nombre_calle } }
    assert_redirected_to nombre_calle_url(@nombre_calle)
  end

  test "should destroy nombre_calle" do
    assert_difference('NombreCalle.count', -1) do
      delete nombre_calle_url(@nombre_calle)
    end

    assert_redirected_to nombre_calles_url
  end
end
