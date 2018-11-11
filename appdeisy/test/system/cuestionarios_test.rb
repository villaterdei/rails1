require "application_system_test_case"

class CuestionariosTest < ApplicationSystemTestCase
  setup do
    @cuestionario = cuestionarios(:one)
  end

  test "visiting the index" do
    visit cuestionarios_url
    assert_selector "h1", text: "Cuestionarios"
  end

  test "creating a Cuestionario" do
    visit cuestionarios_url
    click_on "New Cuestionario"

    fill_in "Fecha", with: @cuestionario.fecha
    fill_in "Hora", with: @cuestionario.hora
    fill_in "Pregunta", with: @cuestionario.pregunta
    click_on "Create Cuestionario"

    assert_text "Cuestionario was successfully created"
    click_on "Back"
  end

  test "updating a Cuestionario" do
    visit cuestionarios_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @cuestionario.fecha
    fill_in "Hora", with: @cuestionario.hora
    fill_in "Pregunta", with: @cuestionario.pregunta
    click_on "Update Cuestionario"

    assert_text "Cuestionario was successfully updated"
    click_on "Back"
  end

  test "destroying a Cuestionario" do
    visit cuestionarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cuestionario was successfully destroyed"
  end
end
