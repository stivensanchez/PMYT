class NivelationsController < ApplicationController
  before_action :set_nivelation, only: [:show, :edit, :update, :destroy]

  # GET /nivelations
  # GET /nivelations.json
  def index
    @nivelations = @oper.nivelation.all
  end

  # GET /nivelations/1
  # GET /nivelations/1.json
  def show
  end

  # GET /nivelations/new
  def new
    @nivelation = Nivelation.new
  end

  # GET /nivelations/1/edit
  def edit
  end

  # POST /nivelations
  # POST /nivelations.json
  def create
    @nivelation = Nivelation.new(nivelation_params)

    respond_to do |format|
      if @nivelation.save
        format.html { redirect_to @nivelation, notice: 'Nivelation was successfully created.' }
        format.json { render :show, status: :created, location: @nivelation }
      else
        format.html { render :new }
        format.json { render json: @nivelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivelations/1
  # PATCH/PUT /nivelations/1.json
  def update
    respond_to do |format|
      if @nivelation.update(nivelation_params)
        format.html { redirect_to @nivelation, notice: 'Nivelation was successfully updated.' }
        format.json { render :show, status: :ok, location: @nivelation }
      else
        format.html { render :edit }
        format.json { render json: @nivelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivelations/1
  # DELETE /nivelations/1.json
  def destroy
    @nivelation.destroy
    respond_to do |format|
      format.html { redirect_to nivelations_url, notice: 'Nivelation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivelation
      @nivelation = Nivelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nivelation_params
      params.require(:nivelation).permit(:oper_id, :operation_id, :desempeño, :comentario)
    end
end
