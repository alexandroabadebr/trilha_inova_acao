class AprovacaoComentariosController < ApplicationController
  before_action :set_aprovacao_comentario, only: %i[ show edit update destroy ]

  # GET /aprovacao_comentarios or /aprovacao_comentarios.json
  def index
    @aprovacao_comentarios = AprovacaoComentario.all
  end

  # GET /aprovacao_comentarios/1 or /aprovacao_comentarios/1.json
  def show
  end

  # GET /aprovacao_comentarios/new
  def new
    @aprovacao_comentario = AprovacaoComentario.new
  end

  # GET /aprovacao_comentarios/1/edit
  def edit
  end

  # POST /aprovacao_comentarios or /aprovacao_comentarios.json
  def create
    @aprovacao_comentario = AprovacaoComentario.new(aprovacao_comentario_params)

    respond_to do |format|
      if @aprovacao_comentario.save
        format.html { redirect_to aprovacao_comentario_url(@aprovacao_comentario), notice: "Aprovacao comentario was successfully created." }
        format.json { render :show, status: :created, location: @aprovacao_comentario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aprovacao_comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprovacao_comentarios/1 or /aprovacao_comentarios/1.json
  def update
    respond_to do |format|
      if @aprovacao_comentario.update(aprovacao_comentario_params)
        format.html { redirect_to aprovacao_comentario_url(@aprovacao_comentario), notice: "Aprovacao comentario was successfully updated." }
        format.json { render :show, status: :ok, location: @aprovacao_comentario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aprovacao_comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprovacao_comentarios/1 or /aprovacao_comentarios/1.json
  def destroy
    @aprovacao_comentario.destroy

    respond_to do |format|
      format.html { redirect_to aprovacao_comentarios_url, notice: "Aprovacao comentario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprovacao_comentario
      @aprovacao_comentario = AprovacaoComentario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aprovacao_comentario_params
      params.require(:aprovacao_comentario).permit(:comentario_id, :data_aprovacao)
    end
end
