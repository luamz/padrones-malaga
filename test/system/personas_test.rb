require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "creating a Persona" do
    visit personas_url
    click_on "New Persona"

    fill_in "Apellido1", with: @persona.apellido1
    fill_in "Apellido2", with: @persona.apellido2
    fill_in "Bautismo", with: @persona.bautismo
    fill_in "Ciudad defuncion", with: @persona.ciudad_defuncion
    fill_in "Ciudad nacimiento", with: @persona.ciudad_nacimiento
    check "Confirmacion bautismo" if @persona.confirmacion_bautismo
    check "Confirmacion defuncion" if @persona.confirmacion_defuncion
    check "Confirmacion nacimiento" if @persona.confirmacion_nacimiento
    fill_in "Defuncion", with: @persona.defuncion
    fill_in "Nacimiento", with: @persona.nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Parroquia", with: @persona.parroquia
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "updating a Persona" do
    visit personas_url
    click_on "Edit", match: :first

    fill_in "Apellido1", with: @persona.apellido1
    fill_in "Apellido2", with: @persona.apellido2
    fill_in "Bautismo", with: @persona.bautismo
    fill_in "Ciudad defuncion", with: @persona.ciudad_defuncion
    fill_in "Ciudad nacimiento", with: @persona.ciudad_nacimiento
    check "Confirmacion bautismo" if @persona.confirmacion_bautismo
    check "Confirmacion defuncion" if @persona.confirmacion_defuncion
    check "Confirmacion nacimiento" if @persona.confirmacion_nacimiento
    fill_in "Defuncion", with: @persona.defuncion
    fill_in "Nacimiento", with: @persona.nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Parroquia", with: @persona.parroquia
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "destroying a Persona" do
    visit personas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persona was successfully destroyed"
  end
end
