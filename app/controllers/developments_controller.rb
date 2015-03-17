class DevelopmentsController < ApplicationController
  before_action :set_development, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /developments
  # GET /developments.json
  def index
    @developments = @info.developments.all
  end

  # GET /developments/1
  # GET /developments/1.json
  def show
  end

  # GET /developments/new
  def new
    @development = Development.new
  end

  # GET /developments/1/edit
  def edit
  end

  # POST /developments
  # POST /developments.json
  def create
    @development = Development.new(development_params)
    @development.info_id = @info.id
    respond_to do |format|
      if @development.save
        format.html { redirect_to info_developments_path(@info), notice: 'Development was successfully created.' }
        format.json { render :show, status: :created, location: @development }
      else
        format.html { render :new }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developments/1
  # PATCH/PUT /developments/1.json
  def update
    respond_to do |format|
      if @development.update(development_params)
        format.html { redirect_to info_developments_path(@info), notice: 'Development was successfully updated.' }
        format.json { render :show, status: :ok, location: @development }
      else
        format.html { render :edit }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developments/1
  # DELETE /developments/1.json
  def destroy
    @development.destroy
    respond_to do |format|
      format.html { redirect_to info_developments_url(@info), notice: 'Development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_development
      @info = Info.find(params[:info_id])
      @development = Development.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def development_params
      params.require(:development).permit(:operation_id, :sam, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios, :observaciones, :info_id, :oper_id, :nivelation_id, :tiempo_real)
    end
end
