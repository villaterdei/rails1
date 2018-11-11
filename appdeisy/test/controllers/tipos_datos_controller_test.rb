require 'test_helper'

class TiposDatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_dato = tipos_datos(:one)
  end

  test "should get index" do
    get tipos_datos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_dato_url
    assert_response :success
  end

  test "should create tipos_dato" do
    assert_difference('TiposDato.count') do
      post tipos_datos_url, params: { tipos_dato: { date: @tipos_dato.date, text: @tipos_dato.text, time: @tipos_dato.time } }
    end

    assert_redirected_to tipos_dato_url(TiposDato.last)
  end

  test "should show tipos_dato" do
    get tipos_dato_url(@tipos_dato)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_dato_url(@tipos_dato)
    assert_response :success
  end

  test "should update tipos_dato" do
    patch tipos_dato_url(@tipos_dato), params: { tipos_dato: { date: @tipos_dato.date, text: @tipos_dato.text, time: @tipos_dato.time } }
    assert_redirected_to tipos_dato_url(@tipos_dato)
  end

  test "should destroy tipos_dato" do
    assert_difference('TiposDato.count', -1) do
      delete tipos_dato_url(@tipos_dato)
    end

    assert_redirected_to tipos_datos_url
  end
end
