require "application_system_test_case"

class FechasTest < ApplicationSystemTestCase
  setup do
    @fecha = fechas(:one)
  end

  test "visiting the index" do
    visit fechas_url
    assert_selector "h1", text: "Fechas"
  end

  test "creating a Fecha" do
    visit fechas_url
    click_on "New Fecha"

    fill_in "Hora", with: @fecha.Hora
    fill_in "Pregunta", with: @fecha.Pregunta
    fill_in "Date", with: @fecha.date
    fill_in "Text", with: @fecha.text
    click_on "Create Fecha"

    assert_text "Fecha was successfully created"
    click_on "Back"
  end

  test "updating a Fecha" do
    visit fechas_url
    click_on "Edit", match: :first

    fill_in "Hora", with: @fecha.Hora
    fill_in "Pregunta", with: @fecha.Pregunta
    fill_in "Date", with: @fecha.date
    fill_in "Text", with: @fecha.text
    click_on "Update Fecha"

    assert_text "Fecha was successfully updated"
    click_on "Back"
  end

  test "destroying a Fecha" do
    visit fechas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fecha was successfully destroyed"
  end
end
