class NivelationsController < ApplicationController
  before_action :set_nivelation, only: [:show, :edit, :update, :destroy, :index, :new, :create]
   
  # GET /nivelations
  # GET /nivelations.json
  def index
    
@developments = Development.select("id","operation_id","sam")
@ensambles = Ensamble.select("id","operation_id","sam")
@terminations = Termination.select("id","operation_id","sam")
@nivelations = @oper.nivelations.search(params[:search], params[:page])
  end
  
  # GET /nivelations/1
  # GET /nivelations/1.json
  def show
  end

  # GET /nivelations/new
  def new
    @developments = Development.select("id","operation_id","sam")
    @nivelation = Nivelation.new
  end

  # GET /nivelations/1/edit
  def edit
    @developments = Development.select("operation.nombre","sam")
  end

  # POST /nivelations
  # POST /nivelations.json
  def create
    @nivelation = Nivelation.new(nivelation_params)
    @nivelation.oper_id = @oper.id
    @nivelation.development_id = @development.id
    respond_to do |format|
      if @nivelation.save
        format.html { redirect_to  oper_nivelations_path(@oper), notice: 'Nivelation was successfully created.' }
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
        format.html { redirect_to oper_nivelations_path(@oper), notice: 'Nivelation was successfully updated.' }
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
      format.html { redirect_to oper_nivelations_path_url(@oper), notice: 'Nivelation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivelation
      @development = Development.all
      @oper = Oper.find(params[:oper_id])
      @nivelation = Nivelation.find(params[:id]) if params[:id] 
      
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def nivelation_params
      params.require(:nivelation).permit(:operation_id,:sam, :tiempo_real, :desempeño, :comentario, :oper_id, :development_id, :ensamble_id, :termination_id)
    end
end
