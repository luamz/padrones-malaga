class VecinosController < ApplicationController
  before_action :set_vecino, only: %i[ show edit update destroy ]

  # GET /vecinos or /vecinos.json
  def index
    @vecinos = Vecino.all
  end

  # GET /vecinos/1 or /vecinos/1.json
  def show
  end

  # GET /vecinos/new
  def new
    personas = []
    Persona.all.each {|persona| personas << [persona.nombre_completo, persona.id]}
    @personas = personas
    @vecino = Vecino.new
    @residencia = Residencia.find(params[:residencia_id])
  end

  # GET /vecinos/1/edit
  def edit
    personas = []
    Persona.all.each {|persona| personas << [persona.nombre_completo, persona.id]}
    @personas = personas
    @persona = [ @vecino.persona.nombre_completo, @vecino.persona_id]
    @residencia = Residencia.find(@vecino.residencia_id)
  end

  # POST /vecinos or /vecinos.json
  def create
    @vecino = Vecino.new(vecino_params)
    respond_to do |format|
      if @vecino.save
        format.html { redirect_to  residencia_path(@vecino.residencia_id), notice: "Vecino creado con éxito." }
        format.json { render :show, status: :created, location: @vecino }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vecino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vecinos/1 or /vecinos/1.json
  def update
    respond_to do |format|
      if @vecino.update(vecino_params)
        format.html { redirect_to residencia_path(@vecino.residencia_id), notice: "Vecino actualizado con éxito." }
        format.json { render :show, status: :ok, location: @vecino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vecino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vecinos/1 or /vecinos/1.json
  def destroy
    @vecino.destroy

    respond_to do |format|
      format.html { redirect_to vecinos_url, notice: "Vecino was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vecino
      @vecino = Vecino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vecino_params
      params.require(:vecino).permit(:residencia_id, :persona_id, :edad, :ocupacion, :pueblo_naturaleza,
                                     :provincia_naturaleza, :parroquia, :estado, :tiempo_residencia, :residencia_habitual,
                                     :dia_nacimiento, :mes_nacimiento, :ano_nacimiento, :classificacion, :contrib_anual,
                                     :sueldo_anual, :alquiler, :sabe_leer, :sabe_escribir, :religion, :defectos,
                                     :ano_nacimiento_estimado, :ano_llegada_estimado)
    end
end
