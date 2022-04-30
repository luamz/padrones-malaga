class BarriosController < ApplicationController
  before_action :set_barrio, only: %i[ show edit update destroy ]

  # GET /barrios or /barrios.json
  def index
    @barrios = Barrio.all
  end

  # GET /barrios/1 or /barrios/1.json
  def show
  end

  # GET /barrios/new
  def new
    @barrio = Barrio.new
  end

  # GET /barrios/1/edit
  def edit
  end

  # POST /barrios or /barrios.json
  def create
    @barrio = Barrio.new(barrio_params)

    respond_to do |format|
      if @barrio.save
        format.html { redirect_to barrio_url(@barrio), notice: "Barrio was successfully created." }
        format.json { render :show, status: :created, location: @barrio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barrios/1 or /barrios/1.json
  def update
    respond_to do |format|
      if @barrio.update(barrio_params)
        format.html { redirect_to barrio_url(@barrio), notice: "Barrio was successfully updated." }
        format.json { render :show, status: :ok, location: @barrio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barrios/1 or /barrios/1.json
  def destroy
    @barrio.destroy

    respond_to do |format|
      format.html { redirect_to barrios_url, notice: "Barrio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barrio
      @barrio = Barrio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barrio_params
      params.require(:barrio).permit(:nombre_barrio)
    end
end
