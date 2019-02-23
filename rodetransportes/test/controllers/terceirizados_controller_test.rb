require 'test_helper'

class TerceirizadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terceirizado = terceirizados(:one)
  end

  test "should get index" do
    get terceirizados_url
    assert_response :success
  end

  test "should get new" do
    get new_terceirizado_url
    assert_response :success
  end

  test "should create terceirizado" do
    assert_difference('Terceirizado.count') do
      post terceirizados_url, params: { terceirizado: { caminhao: @terceirizado.caminhao, cegonha: @terceirizado.cegonha, celular: @terceirizado.celular, cpf: @terceirizado.cpf, email: @terceirizado.email, nome: @terceirizado.nome, placacaminhao: @terceirizado.placacaminhao, placacegonha: @terceirizado.placacegonha, renavancaminhao: @terceirizado.renavancaminhao, renavancegonha: @terceirizado.renavancegonha, rg: @terceirizado.rg } }
    end

    assert_redirected_to terceirizado_url(Terceirizado.last)
  end

  test "should show terceirizado" do
    get terceirizado_url(@terceirizado)
    assert_response :success
  end

  test "should get edit" do
    get edit_terceirizado_url(@terceirizado)
    assert_response :success
  end

  test "should update terceirizado" do
    patch terceirizado_url(@terceirizado), params: { terceirizado: { caminhao: @terceirizado.caminhao, cegonha: @terceirizado.cegonha, celular: @terceirizado.celular, cpf: @terceirizado.cpf, email: @terceirizado.email, nome: @terceirizado.nome, placacaminhao: @terceirizado.placacaminhao, placacegonha: @terceirizado.placacegonha, renavancaminhao: @terceirizado.renavancaminhao, renavancegonha: @terceirizado.renavancegonha, rg: @terceirizado.rg } }
    assert_redirected_to terceirizado_url(@terceirizado)
  end

  test "should destroy terceirizado" do
    assert_difference('Terceirizado.count', -1) do
      delete terceirizado_url(@terceirizado)
    end

    assert_redirected_to terceirizados_url
  end
end
