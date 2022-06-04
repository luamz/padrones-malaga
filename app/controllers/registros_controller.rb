class RegistrosController < ApplicationController
  before_action :set_registro, only: %i[ show edit update destroy ]

  # GET /registros or /registros.json
  def index
    @registros = Registro.all
  end

  # GET /registros/1 or /registros/1.json
  def show
    @residencias = @registro.residencias
  end

  # GET /registros/new
  def new
    @registro = Registro.new
    @padron_y_distrito = Padron.find(params[:padron_id])
    nombres_calles = []
    NombreCalle.all.each {|nombre_calle| nombres_calles << nombre_calle.nombre_calle}
    @nombres_calles = nombres_calles.sort
  end

  # GET /registros/1/edit
  def edit
    @padron_y_distrito = @registro.padron
    @nombre_calle = @registro.nombre_calle.nombre_calle
    nombres_calles = []
    NombreCalle.all.each {|nombre_calle| nombres_calles << nombre_calle.nombre_calle}
    @nombres_calles = nombres_calles

  end

  # POST /registros or /registros.json
  def create
    nombre_calle = NombreCalle.find_by(nombre_calle: registro_params[:nombre_calle]) if registro_params[:nombre_calle]
    @registro = Registro.new(padron_id: registro_params[:padron_id],
                             nombre_calle: nombre_calle,
                             pagina_inicio: registro_params[:pagina_inicio],
                             pagina_fin: registro_params[:pagina_fin],
                             enlace: registro_params[:enlace],
                             parte: registro_params[:parte])

    respond_to do |format|
      if @registro.save
        format.html { redirect_to new_registros_path(@registro.padron), notice: "Nuevo registro creado con éxito." }
        format.json { render :show, status: :created, location: @registro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registros/1 or /registros/1.json
  def update
    nombre_calle = NombreCalle.find_by(nombre_calle: registro_params[:nombre_calle]) if registro_params[:nombre_calle]
    respond_to do |format|
      if @registro.update(nombre_calle: nombre_calle,
                          pagina_inicio:registro_params[:pagina_inicio],
                          pagina_fin: registro_params[:pagina_fin],
                          enlace: registro_params[:enlace],
                          parte: registro_params[:parte])
        format.html { redirect_to padron_url(@registro.padron), notice: "Registro actualizado con éxito." }
        format.json { render :show, status: :ok, location: @registro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registros/1 or /registros/1.json
  def destroy
    @registro.destroy

    respond_to do |format|
      format.html { redirect_to registros_url, notice: "Registro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro
      @registro = Registro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_params
      params.require(:registro).permit(:pagina_inicio, :pagina_fin, :enlace, :nombre_calle, :padron_id, :parte)
    end
end
