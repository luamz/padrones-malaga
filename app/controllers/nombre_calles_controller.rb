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
    barrios = []
    Barrio.all.each {|barrio| barrios << barrio.nombre_barrio}
    @barrios = barrios
  end

  # GET /nombre_calles/new_nombre_calle/1
  def new_nombre_calle
    @calle_id = params[:calle_id]
    @calle = Calle.find(@calle_id)
    @barrio = @calle.barrio
    @nombre_calle = NombreCalle.new
  end

  # GET /nombre_calles/1/edit
  def edit
    @calle = Calle.find(@nombre_calle.calle_id)
  end

  # POST /nombre_calles or /nombre_calles.json
  def create
    @calle = Calle.find(nombre_calle_params[:calle_id]) if nombre_calle_params[:calle_id].present?
    barrio = Barrio.find_by(nombre_barrio: calle_params[:barrio])
    @nombre_calle = NombreCalle.new(nombre_calle_params)
    if @calle.present?
      @nombre_calle.calle = @calle
    else
      @nombre_calle.calle = Calle.new(barrio: barrio)
    end
    respond_to do |format|
      if @nombre_calle.save
        if @calle.present?
          format.html { redirect_to calles_path, notice: "Nuevo nombre agregado a la calle con éxito." }
        else
          format.html { redirect_to calles_path, notice: "Nueva calle creada con éxito." }
        end
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
        format.html { redirect_to nombre_calle_url(@nombre_calle), notice: "Nombre de la calle actualizado con éxito." }
        format.json { render :show, status: :ok, location: @nombre_calle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nombre_calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombre_calles/1 or /nombre_calles/1.json
  def destroy
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
      params.require(:nombre_calle).permit(:nombre_calle, :ano_inicio, :ano_fin, :principal, :calle_id)
    end
    def calle_params
      params.require(:calle).permit(:barrio)
    end
end
