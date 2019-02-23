require "application_system_test_case"

class FrotaTest < ApplicationSystemTestCase
  setup do
    @frotum = frota(:one)
  end

  test "visiting the index" do
    visit frota_url
    assert_selector "h1", text: "Frota"
  end

  test "creating a Frotum" do
    visit frota_url
    click_on "New Frotum"

    fill_in "Modelo", with: @frotum.modelo
    fill_in "Placa", with: @frotum.placa
    fill_in "Renavan", with: @frotum.renavan
    fill_in "Tipo", with: @frotum.tipo
    click_on "Create Frotum"

    assert_text "Frotum was successfully created"
    click_on "Back"
  end

  test "updating a Frotum" do
    visit frota_url
    click_on "Edit", match: :first

    fill_in "Modelo", with: @frotum.modelo
    fill_in "Placa", with: @frotum.placa
    fill_in "Renavan", with: @frotum.renavan
    fill_in "Tipo", with: @frotum.tipo
    click_on "Update Frotum"

    assert_text "Frotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Frotum" do
    visit frota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frotum was successfully destroyed"
  end
end
