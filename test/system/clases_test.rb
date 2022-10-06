require "application_system_test_case"

class ClasesTest < ApplicationSystemTestCase
  setup do
    @clase = clases(:one)
  end

  test "visiting the index" do
    visit clases_url
    assert_selector "h1", text: "Clases"
  end

  test "should create clase" do
    visit clases_url
    click_on "New clase"

    fill_in "Contenidos", with: @clase.contenidos
    fill_in "Duracion", with: @clase.duracion
    fill_in "Evaluacion", with: @clase.evaluacion
    fill_in "Modalidad", with: @clase.modalidad
    fill_in "Precio", with: @clase.precio
    fill_in "Requisitos", with: @clase.requisitos
    fill_in "Titulo", with: @clase.titulo
    click_on "Create Clase"

    assert_text "Clase was successfully created"
    click_on "Back"
  end

  test "should update Clase" do
    visit clase_url(@clase)
    click_on "Edit this clase", match: :first

    fill_in "Contenidos", with: @clase.contenidos
    fill_in "Duracion", with: @clase.duracion
    fill_in "Evaluacion", with: @clase.evaluacion
    fill_in "Modalidad", with: @clase.modalidad
    fill_in "Precio", with: @clase.precio
    fill_in "Requisitos", with: @clase.requisitos
    fill_in "Titulo", with: @clase.titulo
    click_on "Update Clase"

    assert_text "Clase was successfully updated"
    click_on "Back"
  end

  test "should destroy Clase" do
    visit clase_url(@clase)
    click_on "Destroy this clase", match: :first

    assert_text "Clase was successfully destroyed"
  end
end
