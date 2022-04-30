require "application_system_test_case"

class PadronesTest < ApplicationSystemTestCase
  setup do
    @padron = padrones(:one)
  end

  test "visiting the index" do
    visit padrones_url
    assert_selector "h1", text: "Padrones"
  end

  test "creating a Padron" do
    visit padrones_url
    click_on "New Padron"

    fill_in "Ano", with: @padron.ano
    click_on "Create Padron"

    assert_text "Padron was successfully created"
    click_on "Back"
  end

  test "updating a Padron" do
    visit padrones_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @padron.ano
    click_on "Update Padron"

    assert_text "Padron was successfully updated"
    click_on "Back"
  end

  test "destroying a Padron" do
    visit padrones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Padron was successfully destroyed"
  end
end
