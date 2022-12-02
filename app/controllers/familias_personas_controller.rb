class FamiliasPersonasController < ApplicationController
  before_action :set_familia_persona_personas, only: %i[ show edit update destroy ]


  # GET /familia_personas_personas/new
  def new
    @familia_persona = FamiliasPersona.new
    @personas = Persona.all
  end

  # POST /familia_personas_personas or /familia_personas_personas.json
  def create
    @familia_persona = FamiliasPersona.new(familia_persona_params)

    respond_to do |format|
      if @familia_persona.save
        format.html { redirect_to familias_personas_url(@familia_persona), notice: "familia_persona was successfully created." }
        format.json { render :show, status: :created, location: @familia_persona }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @familia_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familia_personas_personas/1 or /familia_personas_personas/1.json
  def destroy
    @familia_persona.destroy

    respond_to do |format|
      format.html { redirect_to familias_personas_url, notice: "Persona removida de la familia con éxito." }
      format.json { head :no_content }
    end
  end

  private



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_familia_persona_personas
    @familia_persona = familia_persona.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def familia_persona_params
    params.require(:familias_persona).permit(:primer_apellido, :segundo_apellido)
  end
end
