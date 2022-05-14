class PadronesController < ApplicationController
  before_action :set_padron, only: %i[ show edit update destroy ]

  # GET /padrones or /padrones.json
  def index
    @padrones = Padron.all
  end

  # GET /padrones/1 or /padrones/1.json
  def show
  end

  # GET /padrones/new
  def new
    distritos = []
    Distrito.all.each {|distrito| distritos << distrito.nombre_distrito}
    @distritos = distritos
    @padron = Padron.new
  end

  # GET /padrones/1/edit
  def edit
  end

  # POST /padrones or /padrones.json
  def create
    @distrito = Distrito.find_by(nombre_distrito: padron_params[:distrito])
    @padron = Padron.new(ano: padron_params[:ano], distrito: @distrito)

    respond_to do |format|
      if @padron.save
        format.html { redirect_to padron_url(@padron), notice: "Padron was successfully created." }
        format.json { render :show, status: :created, location: @padron }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @padron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padrones/1 or /padrones/1.json
  def update
    respond_to do |format|
      if @padron.update(padron_params)
        format.html { redirect_to padron_url(@padron), notice: "Padron was successfully updated." }
        format.json { render :show, status: :ok, location: @padron }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @padron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padrones/1 or /padrones/1.json
  def destroy
    @padron.destroy

    respond_to do |format|
      format.html { redirect_to padrones_url, notice: "Padron was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padron
      @padron = Padron.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def padron_params
      params.require(:padron).permit(:ano, :distrito)
    end
end
