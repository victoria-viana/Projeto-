require "application_system_test_case"

class TerceirizadosTest < ApplicationSystemTestCase
  setup do
    @terceirizado = terceirizados(:one)
  end

  test "visiting the index" do
    visit terceirizados_url
    assert_selector "h1", text: "Terceirizados"
  end

  test "creating a Terceirizado" do
    visit terceirizados_url
    click_on "New Terceirizado"

    fill_in "Caminhao", with: @terceirizado.caminhao
    fill_in "Cegonha", with: @terceirizado.cegonha
    fill_in "Celular", with: @terceirizado.celular
    fill_in "Cpf", with: @terceirizado.cpf
    fill_in "Email", with: @terceirizado.email
    fill_in "Nome", with: @terceirizado.nome
    fill_in "Placacaminhao", with: @terceirizado.placacaminhao
    fill_in "Placacegonha", with: @terceirizado.placacegonha
    fill_in "Renavancaminhao", with: @terceirizado.renavancaminhao
    fill_in "Renavancegonha", with: @terceirizado.renavancegonha
    fill_in "Rg", with: @terceirizado.rg
    click_on "Create Terceirizado"

    assert_text "Terceirizado was successfully created"
    click_on "Back"
  end

  test "updating a Terceirizado" do
    visit terceirizados_url
    click_on "Edit", match: :first

    fill_in "Caminhao", with: @terceirizado.caminhao
    fill_in "Cegonha", with: @terceirizado.cegonha
    fill_in "Celular", with: @terceirizado.celular
    fill_in "Cpf", with: @terceirizado.cpf
    fill_in "Email", with: @terceirizado.email
    fill_in "Nome", with: @terceirizado.nome
    fill_in "Placacaminhao", with: @terceirizado.placacaminhao
    fill_in "Placacegonha", with: @terceirizado.placacegonha
    fill_in "Renavancaminhao", with: @terceirizado.renavancaminhao
    fill_in "Renavancegonha", with: @terceirizado.renavancegonha
    fill_in "Rg", with: @terceirizado.rg
    click_on "Update Terceirizado"

    assert_text "Terceirizado was successfully updated"
    click_on "Back"
  end

  test "destroying a Terceirizado" do
    visit terceirizados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Terceirizado was successfully destroyed"
  end
end
