require "application_system_test_case"

class CallesTest < ApplicationSystemTestCase
  setup do
    @calle = calles(:one)
  end

  test "visiting the index" do
    visit calles_url
    assert_selector "h1", text: "Calles"
  end

  test "creating a Calle" do
    visit calles_url
    click_on "New Calle"

    fill_in "Barrio", with: @calle.barrio_id
    click_on "Create Calle"

    assert_text "Calle was successfully created"
    click_on "Back"
  end

  test "updating a Calle" do
    visit calles_url
    click_on "Edit", match: :first

    fill_in "Barrio", with: @calle.barrio_id
    click_on "Update Calle"

    assert_text "Calle was successfully updated"
    click_on "Back"
  end

  test "destroying a Calle" do
    visit calles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calle was successfully destroyed"
  end
end
