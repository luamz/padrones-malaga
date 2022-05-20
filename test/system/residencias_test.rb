require "application_system_test_case"

class ResidenciasTest < ApplicationSystemTestCase
  setup do
    @residencia = residencias(:one)
  end

  test "visiting the index" do
    visit residencias_url
    assert_selector "h1", text: "Residencias"
  end

  test "creating a Residencia" do
    visit residencias_url
    click_on "New Residencia"

    fill_in "Dpto", with: @residencia.dpto
    fill_in "Numero", with: @residencia.numero
    fill_in "Piso", with: @residencia.piso
    fill_in "Registro", with: @residencia.registro_id
    click_on "Create Residencia"

    assert_text "Residencia was successfully created"
    click_on "Back"
  end

  test "updating a Residencia" do
    visit residencias_url
    click_on "Edit", match: :first

    fill_in "Dpto", with: @residencia.dpto
    fill_in "Numero", with: @residencia.numero
    fill_in "Piso", with: @residencia.piso
    fill_in "Registro", with: @residencia.registro_id
    click_on "Update Residencia"

    assert_text "Residencia was successfully updated"
    click_on "Back"
  end

  test "destroying a Residencia" do
    visit residencias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residencia was successfully destroyed"
  end
end
