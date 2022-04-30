require "application_system_test_case"

class NombreCallesTest < ApplicationSystemTestCase
  setup do
    @nombre_calle = nombre_calles(:one)
  end

  test "visiting the index" do
    visit nombre_calles_url
    assert_selector "h1", text: "Nombre Calles"
  end

  test "creating a Nombre calle" do
    visit nombre_calles_url
    click_on "New Nombre Calle"

    fill_in "Ano fin", with: @nombre_calle.ano_fin
    fill_in "Ano inicio", with: @nombre_calle.ano_inicio
    fill_in "Calle", with: @nombre_calle.calle_id
    fill_in "Nombre calle", with: @nombre_calle.nombre_calle
    click_on "Create Nombre calle"

    assert_text "Nombre calle was successfully created"
    click_on "Back"
  end

  test "updating a Nombre calle" do
    visit nombre_calles_url
    click_on "Edit", match: :first

    fill_in "Ano fin", with: @nombre_calle.ano_fin
    fill_in "Ano inicio", with: @nombre_calle.ano_inicio
    fill_in "Calle", with: @nombre_calle.calle_id
    fill_in "Nombre calle", with: @nombre_calle.nombre_calle
    click_on "Update Nombre calle"

    assert_text "Nombre calle was successfully updated"
    click_on "Back"
  end

  test "destroying a Nombre calle" do
    visit nombre_calles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nombre calle was successfully destroyed"
  end
end
