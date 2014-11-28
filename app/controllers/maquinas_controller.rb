class MaquinasController < ApplicationController
  before_action :set_maquina, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /maquinas
  # GET /maquinas.json
  def index
    @maquinas = @modulo.maquinas.all
  end

  # GET /maquinas/1
  # GET /maquinas/1.json
  def show
  end

  # GET /maquinas/new
  def new
    @maquina = Maquina.new
  end

  # GET /maquinas/1/edit
  def edit
  end

  # POST /maquinas
  # POST /maquinas.json
  def create
    @maquina = Maquina.new(maquina_params)
    @maquina.modulo_id = @modulo.id
    respond_to do |format|
      if @maquina.save
        format.html { redirect_to modulo_maquinas_path(@modulo), notice: 'Maquina was successfully created.' }
        format.json { render :show, status: :created, location: @maquina }
      else
        format.html { render :new }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maquinas/1
  # PATCH/PUT /maquinas/1.json
  def update
    respond_to do |format|
      if @maquina.update(maquina_params)
        format.html { redirect_to modulo_maquinas_path(@modulo), notice: 'Maquina was successfully updated.' }
        format.json { render :show, status: :ok, location: @maquina }
      else
        format.html { render :edit }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinas/1
  # DELETE /maquinas/1.json
  def destroy
    @maquina.destroy
    respond_to do |format|
      format.html { redirect_to modulo_maquinas_url(@modulo), notice: 'Maquina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquina
      @modulo = Modulo.find(params[:modulo_id])
      @maquina = Maquina.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maquina_params
      params.require(:maquina).permit(:nombre, :descripcion, :modulo_id)
    end
end
