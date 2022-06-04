class ResidenciasController < ApplicationController
  before_action :set_residencia, only: %i[ show edit update destroy ]

  # GET /residencias or /residencias.json
  def index
    @residencias = Residencia.all
  end

  # GET /residencias/1 or /residencias/1.json
  def show
  end

  # GET /residencias/new
  def new
    @registro = Registro.find(params[:registro_id])
    @residencia = Residencia.new
  end

  # GET /residencias/1/edit
  def edit
    @registro = Registro.find(params[:id])
  end

  # POST /residencias or /residencias.json
  def create
    @residencia = Residencia.new(residencia_params)

    respond_to do |format|
      if @residencia.save
        format.html { redirect_to residencia_url(@residencia), notice: "Residencia was successfully created." }
        format.json { render :show, status: :created, location: @residencia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @residencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residencias/1 or /residencias/1.json
  def update
    respond_to do |format|
      if @residencia.update(residencia_params)
        format.html { redirect_to residencia_url(@residencia), notice: "Residencia was successfully updated." }
        format.json { render :show, status: :ok, location: @residencia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @residencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residencias/1 or /residencias/1.json
  def destroy
    @residencia.destroy

    respond_to do |format|
      format.html { redirect_to residencias_url, notice: "Residencia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residencia
      @residencia = Residencia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def residencia_params
      params.require(:residencia).permit(:registro_id, :numero, :piso, :dpto, :pagina, :observaciones, :dia_nacimiento,
                                         :mes_nacimiento, :ano_nacimiento, :alquiler, :contrib_anual, :sueldo_anual,
                                         :residencia_habitual, :religion, :defectos, :sabe_leer, :sabe_escribir, :classificacion)
    end
end
