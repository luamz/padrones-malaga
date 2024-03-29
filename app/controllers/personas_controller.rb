class PersonasController < ApplicationController
  before_action :set_persona, only: %i[ show edit update destroy ]

  # GET /personas or /personas.json
  def index
    @personas = Persona.all.order(nombre: :asc)
  end

  # GET /personas/new
  def new
    @persona = Persona.new
  end

  # GET /personas/1 or /personas/1.json
  def show
    @vecinos = @persona.vecinos.sort_by { |vecino| vecino.residencia.registro.ano  }
  end

  # GET /personas/1/edit
  def edit
  end

  # POST /personas or /personas.json
  def create
    @persona = Persona.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to personas_path, notice: "Persona creada con éxito." }
        format.json { render :show, status: :created, location: @persona }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personas/1 or /personas/1.json
  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: "Persona actualizada con éxito." }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def persona_params
      params.require(:persona).permit(:nombre, :apellido1, :apellido2, :nacimiento, :ciudad_nacimiento, :confirmacion_nacimiento, :defuncion, :ciudad_defuncion, :confirmacion_defuncion, :bautismo, :parroquia, :confirmacion_bautismo)
    end
end
