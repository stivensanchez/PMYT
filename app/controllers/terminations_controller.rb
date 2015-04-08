class TerminationsController < ApplicationController
  before_action :set_termination, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /terminations
  # GET /terminations.json
  def index
    @terminations = @info.terminations.all
  end

  # GET /terminations/1
  # GET /terminations/1.json
  def show
  end

  # GET /terminations/new
  def new
    @termination = Termination.new
  end

  # GET /terminations/1/edit
  def edit
  end

  # POST /terminations
  # POST /terminations.json
  def create
    @termination = Termination.new(termination_params)
    @termination.info_id = @info.id
    respond_to do |format|
      if @termination.save
        format.html { redirect_to info_developments_path(@info), notice: 'Termination was successfully created.' }
        format.json { render :show, status: :created, location: @termination }
      else
        format.html { render :new }
        format.json { render json: @termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminations/1
  # PATCH/PUT /terminations/1.json
  def update
    respond_to do |format|
      if @termination.update(termination_params)
        format.html { redirect_to info_developments_path(@info), notice: 'Termination was successfully updated.' }
        format.json { render :show, status: :ok, location: @termination }
      else
        format.html { render :edit }
        format.json { render json: @termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminations/1
  # DELETE /terminations/1.json
  def destroy
    @termination.destroy
    respond_to do |format|
      format.html { redirect_to info_developments_url(@info), notice: 'Termination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termination
      @info = Info.find(params[:info_id])
      @termination = Termination.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def termination_params
      params.require(:termination).permit(:operation_id, :sam, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios, :observaciones, :imagen, :info_id, :oper_id, :tiempo_real, :desempeño, :comentario)
    end
end
