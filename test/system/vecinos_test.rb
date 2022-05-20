require "application_system_test_case"

class VecinosTest < ApplicationSystemTestCase
  setup do
    @vecino = vecinos(:one)
  end

  test "visiting the index" do
    visit vecinos_url
    assert_selector "h1", text: "Vecinos"
  end

  test "creating a Vecino" do
    visit vecinos_url
    click_on "New Vecino"

    fill_in "Alquiler", with: @vecino.alquiler
    fill_in "Ano llegada estimado", with: @vecino.ano_llegada_estimado
    fill_in "Ano nacimiento", with: @vecino.ano_nacimiento
    fill_in "Ano nacimiento estimado", with: @vecino.ano_nacimiento_estimado
    fill_in "Classificacion", with: @vecino.classificacion
    fill_in "Contrib anual", with: @vecino.contrib_anual
    fill_in "Defectos", with: @vecino.defectos
    fill_in "Dia nacimiento", with: @vecino.dia_nacimiento
    fill_in "Edad", with: @vecino.edad
    fill_in "Estado", with: @vecino.estado
    fill_in "Mes nacimiento", with: @vecino.mes_nacimiento
    fill_in "Ocupacion", with: @vecino.ocupacion
    fill_in "Parroquia", with: @vecino.parroquia
    fill_in "Persona", with: @vecino.persona_id
    fill_in "Provincia naturaleza", with: @vecino.provincia_naturaleza
    fill_in "Pueblo naturaleza", with: @vecino.pueblo_naturaleza
    fill_in "Religion", with: @vecino.religion
    fill_in "Residencia habitual", with: @vecino.residencia_habitual
    fill_in "Residencia", with: @vecino.residencia_id
    check "Sabe escribir" if @vecino.sabe_escribir
    check "Sabe leer" if @vecino.sabe_leer
    fill_in "Sueldo anual", with: @vecino.sueldo_anual
    fill_in "Tiempo residencia", with: @vecino.tiempo_residencia
    click_on "Create Vecino"

    assert_text "Vecino was successfully created"
    click_on "Back"
  end

  test "updating a Vecino" do
    visit vecinos_url
    click_on "Edit", match: :first

    fill_in "Alquiler", with: @vecino.alquiler
    fill_in "Ano llegada estimado", with: @vecino.ano_llegada_estimado
    fill_in "Ano nacimiento", with: @vecino.ano_nacimiento
    fill_in "Ano nacimiento estimado", with: @vecino.ano_nacimiento_estimado
    fill_in "Classificacion", with: @vecino.classificacion
    fill_in "Contrib anual", with: @vecino.contrib_anual
    fill_in "Defectos", with: @vecino.defectos
    fill_in "Dia nacimiento", with: @vecino.dia_nacimiento
    fill_in "Edad", with: @vecino.edad
    fill_in "Estado", with: @vecino.estado
    fill_in "Mes nacimiento", with: @vecino.mes_nacimiento
    fill_in "Ocupacion", with: @vecino.ocupacion
    fill_in "Parroquia", with: @vecino.parroquia
    fill_in "Persona", with: @vecino.persona_id
    fill_in "Provincia naturaleza", with: @vecino.provincia_naturaleza
    fill_in "Pueblo naturaleza", with: @vecino.pueblo_naturaleza
    fill_in "Religion", with: @vecino.religion
    fill_in "Residencia habitual", with: @vecino.residencia_habitual
    fill_in "Residencia", with: @vecino.residencia_id
    check "Sabe escribir" if @vecino.sabe_escribir
    check "Sabe leer" if @vecino.sabe_leer
    fill_in "Sueldo anual", with: @vecino.sueldo_anual
    fill_in "Tiempo residencia", with: @vecino.tiempo_residencia
    click_on "Update Vecino"

    assert_text "Vecino was successfully updated"
    click_on "Back"
  end

  test "destroying a Vecino" do
    visit vecinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vecino was successfully destroyed"
  end
end
