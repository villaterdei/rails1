require "application_system_test_case"

class TiposDatosTest < ApplicationSystemTestCase
  setup do
    @tipos_dato = tipos_datos(:one)
  end

  test "visiting the index" do
    visit tipos_datos_url
    assert_selector "h1", text: "Tipos Datos"
  end

  test "creating a Tipos dato" do
    visit tipos_datos_url
    click_on "New Tipos Dato"

    fill_in "Date", with: @tipos_dato.date
    fill_in "Text", with: @tipos_dato.text
    fill_in "Time", with: @tipos_dato.time
    click_on "Create Tipos dato"

    assert_text "Tipos dato was successfully created"
    click_on "Back"
  end

  test "updating a Tipos dato" do
    visit tipos_datos_url
    click_on "Edit", match: :first

    fill_in "Date", with: @tipos_dato.date
    fill_in "Text", with: @tipos_dato.text
    fill_in "Time", with: @tipos_dato.time
    click_on "Update Tipos dato"

    assert_text "Tipos dato was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipos dato" do
    visit tipos_datos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipos dato was successfully destroyed"
  end
end
