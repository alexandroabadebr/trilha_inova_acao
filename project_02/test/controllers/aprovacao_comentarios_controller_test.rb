require "test_helper"

class AprovacaoComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aprovacao_comentario = aprovacao_comentarios(:one)
  end

  test "should get index" do
    get aprovacao_comentarios_url
    assert_response :success
  end

  test "should get new" do
    get new_aprovacao_comentario_url
    assert_response :success
  end

  test "should create aprovacao_comentario" do
    assert_difference("AprovacaoComentario.count") do
      post aprovacao_comentarios_url, params: { aprovacao_comentario: { comentario_id: @aprovacao_comentario.comentario_id, data_aprovacao: @aprovacao_comentario.data_aprovacao } }
    end

    assert_redirected_to aprovacao_comentario_url(AprovacaoComentario.last)
  end

  test "should show aprovacao_comentario" do
    get aprovacao_comentario_url(@aprovacao_comentario)
    assert_response :success
  end

  test "should get edit" do
    get edit_aprovacao_comentario_url(@aprovacao_comentario)
    assert_response :success
  end

  test "should update aprovacao_comentario" do
    patch aprovacao_comentario_url(@aprovacao_comentario), params: { aprovacao_comentario: { comentario_id: @aprovacao_comentario.comentario_id, data_aprovacao: @aprovacao_comentario.data_aprovacao } }
    assert_redirected_to aprovacao_comentario_url(@aprovacao_comentario)
  end

  test "should destroy aprovacao_comentario" do
    assert_difference("AprovacaoComentario.count", -1) do
      delete aprovacao_comentario_url(@aprovacao_comentario)
    end

    assert_redirected_to aprovacao_comentarios_url
  end
end
