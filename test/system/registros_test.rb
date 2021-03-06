require "application_system_test_case"

class RegistrosTest < ApplicationSystemTestCase
  setup do
    @registro = registros(:one)
  end

  test "visiting the index" do
    visit registros_url
    assert_selector "h1", text: "Registros"
  end

  test "creating a Registro" do
    visit registros_url
    click_on "New Registro"

    fill_in "Distrito", with: @registro.distrito_id
    fill_in "Enlace", with: @registro.enlace
    fill_in "Nombre calle", with: @registro.nombre_calle_id
    fill_in "Padron", with: @registro.padron_id
    fill_in "Pagina fin", with: @registro.pagina_fin
    fill_in "Pagina inicio", with: @registro.pagina_inicio
    click_on "Create Registro"

    assert_text "Registro was successfully created"
    click_on "Back"
  end

  test "updating a Registro" do
    visit registros_url
    click_on "Edit", match: :first

    fill_in "Distrito", with: @registro.distrito_id
    fill_in "Enlace", with: @registro.enlace
    fill_in "Nombre calle", with: @registro.nombre_calle_id
    fill_in "Padron", with: @registro.padron_id
    fill_in "Pagina fin", with: @registro.pagina_fin
    fill_in "Pagina inicio", with: @registro.pagina_inicio
    click_on "Update Registro"

    assert_text "Registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro" do
    visit registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro was successfully destroyed"
  end
end
