require "application_system_test_case"

class AprovacaoComentariosTest < ApplicationSystemTestCase
  setup do
    @aprovacao_comentario = aprovacao_comentarios(:one)
  end

  test "visiting the index" do
    visit aprovacao_comentarios_url
    assert_selector "h1", text: "Aprovacao comentarios"
  end

  test "should create aprovacao comentario" do
    visit aprovacao_comentarios_url
    click_on "New aprovacao comentario"

    fill_in "Comentario", with: @aprovacao_comentario.comentario_id
    fill_in "Data aprovacao", with: @aprovacao_comentario.data_aprovacao
    click_on "Create Aprovacao comentario"

    assert_text "Aprovacao comentario was successfully created"
    click_on "Back"
  end

  test "should update Aprovacao comentario" do
    visit aprovacao_comentario_url(@aprovacao_comentario)
    click_on "Edit this aprovacao comentario", match: :first

    fill_in "Comentario", with: @aprovacao_comentario.comentario_id
    fill_in "Data aprovacao", with: @aprovacao_comentario.data_aprovacao
    click_on "Update Aprovacao comentario"

    assert_text "Aprovacao comentario was successfully updated"
    click_on "Back"
  end

  test "should destroy Aprovacao comentario" do
    visit aprovacao_comentario_url(@aprovacao_comentario)
    click_on "Destroy this aprovacao comentario", match: :first

    assert_text "Aprovacao comentario was successfully destroyed"
  end
end
