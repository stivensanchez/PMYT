class ModulosController < ApplicationController
  before_action :set_modulo, only: [:show, :edit, :update, :destroy]

  # GET /modulos
  # GET /modulos.json
  def index
   @modulos = Modulo.search(params[:search], params[:page])
    #descargar en xls (excel)
   respond_to do |format|
      format.html
      format.csv { send_data @modulos.to_csv }
      format.xls
    end
  end

  # GET /modulos/1
  # GET /modulos/1.json
  def show
  end

  # GET /modulos/new
  def new
    @modulo = Modulo.new
  end

  # GET /modulos/1/edit
  def edit
  end

  # POST /modulos
  # POST /modulos.json
  def create
    @modulo = Modulo.new(modulo_params)
    
    respond_to do |format|
      if @modulo.save
        format.html { redirect_to modulos_path, notice: 'Modulo creado.' }
        format.json { render :show, status: :created, location: @modulo }
      else
        format.html { render :new }
        format.json { render json: @modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modulos/1
  # PATCH/PUT /modulos/1.json
  def update
    respond_to do |format|
      if @modulo.update(modulo_params)
        format.html { redirect_to @modulo, notice: 'seguro desea editar Modulo.' }
        format.json { render :show, status: :ok, location: @modulo }
      else
        format.html { render :edit }
        format.json { render json: @modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modulos/1
  # DELETE /modulos/1.json
  def destroy
    @modulo.destroy
    respond_to do |format|
      format.html { redirect_to modulos_url, notice: 'seguro desea eliminar.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modulo
      @modulo = Modulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modulo_params
      params.require(:modulo).permit(:nombre, :descripcion)
    end
end
