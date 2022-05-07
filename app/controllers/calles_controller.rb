class CallesController < ApplicationController
  before_action :set_calle, only: %i[ show edit update destroy ]

  # GET /calles or /calles.json
  def index
    @calles = Calle.all
  end

  # GET /calles/1 or /calles/1.json
  def show
  end

  # GET /calles/new
  def new
    barrios = []
    Barrio.all.each {|barrio| barrios << barrio.nombre_barrio}
    @barrios = barrios
    @calle = Calle.new
  end

  # GET /calles/1/edit
  def edit
    barrios = []
    Barrio.all.each {|barrio| barrios << barrio.nombre_barrio}
    @barrios = barrios
  end

  # POST /calles or /calles.json
  def create

    barrio_id = Barrio.find_by(nombre_barrio:calle_params[:barrio]).id
    @calle = Calle.new(barrio_id: barrio_id)

    respond_to do |format|
      if @calle.save
        format.html { redirect_to calle_url(@calle), notice: "Calle was successfully created." }
        format.json { render :show, status: :created, location: @calle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calles/1 or /calles/1.json
  def update
    respond_to do |format|
      if @calle.update(calle_params)
        format.html { redirect_to calle_url(@calle), notice: "Calle was successfully updated." }
        format.json { render :show, status: :ok, location: @calle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calles/1 or /calles/1.json
  def destroy
    @calle.destroy

    respond_to do |format|
      format.html { redirect_to calles_url, notice: "Calle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def create_nombre_calle
      @nombre_calle = NombreCalle.create(nombre_calle: calle_params[:principal])
      @nombre_calle.save
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_calle
      @calle = Calle.find(params[:id])
    end

    def calle_params
      params.require(:calle).permit(:barrio, :principal)
    end
end
