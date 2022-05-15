class CallesController < ApplicationController
  before_action :set_calle, only: %i[ show edit update destroy ]

  # GET /calles or /calles.json
  def index
    if params[:query].present?
      @calles = Calle.where(nombres: NombreCalle.where("nombre_calle LIKE ?", "%#{params[:query]}%"))
                     .or(Calle.where(barrio:Barrio.where("nombre_barrio LIKE ?", "%#{params[:query]}%")))
                     .page(params[:page]).per(50)
    else
      @calles=Calle.all.page(params[:page]).per(50)
    end
  end

  # GET /calles/1 or /calles/1.json
  def show
  end


  # GET /calles/1/edit
  def edit
    @barrio = @calle.barrio.nombre_barrio
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
        format.html { redirect_to "/nombre_calles/new_nombre_calle/#{@calle.id}", notice: "Calle actualizada con éxito." }
        format.json { render :show, status: :created, location: @calle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calles/1 or /calles/1.json
  def update
    @antigua_principal = @calle.nombres.where(principal:true).first
    @nueva_principal = NombreCalle.find(calle_params[:principal])
    unless @antigua_principal == @nueva_principal
      @antigua_principal.update(principal:false)
      @nueva_principal.update(principal:true)
    end
    barrio_id = Barrio.find_by(nombre_barrio:calle_params[:barrio]).id
    respond_to do |format|
      if @calle.update(barrio_id: barrio_id)
        format.html { redirect_to calle_url(@calle), notice: "Calle actualizada con éxito." }
        format.json { render :show, status: :ok, location: @calle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
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
