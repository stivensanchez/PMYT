class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /treatments
  # GET /treatments.json
  def index
    @treatments = @info.treatments.all
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)
    @treatment.info_id = @info.id
    respond_to do |format|
      if @treatment.save
        format.html { redirect_to info_treatments_path(@info), notice: 'Treatment was successfully created.' }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to info_treatments_path(@info), notice: 'Treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to info_treatments_url(@info), notice: 'Treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @info = Info.find(params[:info_id])
      @treatment = Treatment.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_params
      params.require(:treatment).permit(:proceso, :descripcion, :ubicacion, :proveedor, :precio, :info_id)
    end
end
