class ClasesController < ApplicationController
  before_action :set_clase, only: %i[ show edit update destroy ]

  # GET /clases or /clases.json
  def index
    @clases = Clase.all
  end

  # GET /clases/1 or /clases/1.json
  def show
  end

  # GET /clases/new
  def new
    @clase = Clase.new
  end

  # GET /clases/1/edit
  def edit
  end

  # POST /clases or /clases.json
  def create
    @clase = Clase.new(clase_params)

    respond_to do |format|
      if @clase.save
        format.html { redirect_to clase_url(@clase), notice: "Clase was successfully created." }
        format.json { render :show, status: :created, location: @clase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clases/1 or /clases/1.json
  def update
    respond_to do |format|
      if @clase.update(clase_params)
        format.html { redirect_to clase_url(@clase), notice: "Clase was successfully updated." }
        format.json { render :show, status: :ok, location: @clase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clases/1 or /clases/1.json
  def destroy
    @clase.destroy

    respond_to do |format|
      format.html { redirect_to clases_url, notice: "Clase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase
      @clase = Clase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clase_params
      params.require(:clase).permit(:titulo, :duracion, :precio, :contenidos, :requisitos, :modalidad, :evaluacion)
    end
end
