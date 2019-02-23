require "application_system_test_case"

class EstoquesTest < ApplicationSystemTestCase
  setup do
    @estoque = estoques(:one)
  end

  test "visiting the index" do
    visit estoques_url
    assert_selector "h1", text: "Estoques"
  end

  test "creating a Estoque" do
    visit estoques_url
    click_on "New Estoque"

    fill_in "Ano", with: @estoque.ano
    fill_in "Banco", with: @estoque.banco
    fill_in "Chassi", with: @estoque.chassi
    fill_in "Chave", with: @estoque.chave
    fill_in "Cor", with: @estoque.cor
    fill_in "Dataentrada", with: @estoque.dataentrada
    fill_in "Datasaida", with: @estoque.datasaida
    fill_in "Enderecocoleta", with: @estoque.enderecocoleta
    fill_in "Funciona", with: @estoque.funciona
    fill_in "Local", with: @estoque.local
    fill_in "Placa", with: @estoque.placa
    fill_in "Reboque", with: @estoque.reboque
    fill_in "Situacao", with: @estoque.situacao
    fill_in "Tipoentrada", with: @estoque.tipoentrada
    fill_in "Transportado", with: @estoque.transportado
    fill_in "Veiculo", with: @estoque.veiculo
    click_on "Create Estoque"

    assert_text "Estoque was successfully created"
    click_on "Back"
  end

  test "updating a Estoque" do
    visit estoques_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @estoque.ano
    fill_in "Banco", with: @estoque.banco
    fill_in "Chassi", with: @estoque.chassi
    fill_in "Chave", with: @estoque.chave
    fill_in "Cor", with: @estoque.cor
    fill_in "Dataentrada", with: @estoque.dataentrada
    fill_in "Datasaida", with: @estoque.datasaida
    fill_in "Enderecocoleta", with: @estoque.enderecocoleta
    fill_in "Funciona", with: @estoque.funciona
    fill_in "Local", with: @estoque.local
    fill_in "Placa", with: @estoque.placa
    fill_in "Reboque", with: @estoque.reboque
    fill_in "Situacao", with: @estoque.situacao
    fill_in "Tipoentrada", with: @estoque.tipoentrada
    fill_in "Transportado", with: @estoque.transportado
    fill_in "Veiculo", with: @estoque.veiculo
    click_on "Update Estoque"

    assert_text "Estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Estoque" do
    visit estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estoque was successfully destroyed"
  end
end
