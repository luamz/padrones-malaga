class NombreCallesController < ApplicationController
  before_action :set_nombre_calle, only: %i[ show edit update destroy ]

  # GET /nombre_calles or /nombre_calles.json
  def index
    @nombre_calles = NombreCalle.all
  end

  # GET /nombre_calles/1 or /nombre_calles/1.json
  def show
  end

  # GET /nombre_calles/new
  def new
    @nombre_calle = NombreCalle.new
  end

  # GET /nombre_calles/new_nombre_calle/1
  def new_nombre_calle
    @calle_id = params[:calle_id]
    @calle = Calle.find(@calle_id).principal
    @nombre_calle = NombreCalle.new
  end

  # GET /nombre_calles/1/edit
  def edit
  end

  # POST /nombre_calles or /nombre_calles.json
  def create
    @nombre_calle = NombreCalle.new(nombre_calle_params)

    respond_to do |format|
      if @nombre_calle.save
        format.html { redirect_to nombre_calle_url(@nombre_calle), notice: "Nombre calle was successfully created." }
        format.json { render :show, status: :created, location: @nombre_calle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nombre_calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombre_calles/1 or /nombre_calles/1.json
  def update
    respond_to do |format|
      if @nombre_calle.update(nombre_calle_params)
        format.html { redirect_to nombre_calle_url(@nombre_calle), notice: "Nombre calle was successfully updated." }
        format.json { render :show, status: :ok, location: @nombre_calle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nombre_calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombre_calles/1 or /nombre_calles/1.json
  def destroy
    @nombre_calle.destroy

    respond_to do |format|
      format.html { redirect_to nombre_calles_url, notice: "Nombre calle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombre_calle
      @nombre_calle = NombreCalle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nombre_calle_params
      params.require(:nombre_calle).permit(:nombre_calle, :ano_inicio, :ano_fin, :calle_id)
    end
end
