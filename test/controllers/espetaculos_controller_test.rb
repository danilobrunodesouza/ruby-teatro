require 'test_helper'

class EspetaculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @espetaculo = espetaculos(:one)
  end

  test "should get index" do
    get espetaculos_url
    assert_response :success
  end

  test "should get new" do
    get new_espetaculo_url
    assert_response :success
  end

  test "should create espetaculo" do
    assert_difference('Espetaculo.count') do
      post espetaculos_url, params: { espetaculo: { atores: @espetaculo.atores, diretor: @espetaculo.diretor, iluminador: @espetaculo.iluminador, nome: @espetaculo.nome, sonoplasta: @espetaculo.sonoplasta } }
    end

    assert_redirected_to espetaculo_url(Espetaculo.last)
  end

  test "should show espetaculo" do
    get espetaculo_url(@espetaculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_espetaculo_url(@espetaculo)
    assert_response :success
  end

  test "should update espetaculo" do
    patch espetaculo_url(@espetaculo), params: { espetaculo: { atores: @espetaculo.atores, diretor: @espetaculo.diretor, iluminador: @espetaculo.iluminador, nome: @espetaculo.nome, sonoplasta: @espetaculo.sonoplasta } }
    assert_redirected_to espetaculo_url(@espetaculo)
  end

  test "should destroy espetaculo" do
    assert_difference('Espetaculo.count', -1) do
      delete espetaculo_url(@espetaculo)
    end

    assert_redirected_to espetaculos_url
  end
end
