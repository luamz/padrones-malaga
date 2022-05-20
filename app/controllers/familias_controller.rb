class FamiliasController < ApplicationController
  before_action :set_familia, only: %i[ show edit update destroy ]

  # GET /familias or /familias.json
  def index
    @familias = Familia.all
  end

  # GET /familias/1 or /familias/1.json
  def show
  end

  # GET /familias/new
  def new
    @familia = Familia.new
  end

  # GET /familias/1/edit
  def edit
  end

  # POST /familias or /familias.json
  def create
    @familia = Familia.new(familia_params)

    respond_to do |format|
      if @familia.save
        format.html { redirect_to familia_url(@familia), notice: "Familia was successfully created." }
        format.json { render :show, status: :created, location: @familia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @familia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /familias/1 or /familias/1.json
  def update
    respond_to do |format|
      if @familia.update(familia_params)
        format.html { redirect_to familia_url(@familia), notice: "Familia was successfully updated." }
        format.json { render :show, status: :ok, location: @familia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @familia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familias/1 or /familias/1.json
  def destroy
    @familia.destroy

    respond_to do |format|
      format.html { redirect_to familias_url, notice: "Familia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_familia
      @familia = Familia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def familia_params
      params.require(:familia).permit(:apellidos)
    end
end
