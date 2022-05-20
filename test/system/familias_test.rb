require "application_system_test_case"

class FamiliasTest < ApplicationSystemTestCase
  setup do
    @familia = familias(:one)
  end

  test "visiting the index" do
    visit familias_url
    assert_selector "h1", text: "Familias"
  end

  test "creating a Familia" do
    visit familias_url
    click_on "New Familia"

    fill_in "Apellidos", with: @familia.apellidos
    click_on "Create Familia"

    assert_text "Familia was successfully created"
    click_on "Back"
  end

  test "updating a Familia" do
    visit familias_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @familia.apellidos
    click_on "Update Familia"

    assert_text "Familia was successfully updated"
    click_on "Back"
  end

  test "destroying a Familia" do
    visit familias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Familia was successfully destroyed"
  end
end
