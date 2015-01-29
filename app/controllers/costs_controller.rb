class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /costs
  # GET /costs.json
  def index
    @costs = @ficha.costs.all
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
  end

  # GET /costs/new
  def new
    @cost = Cost.new
  end

  # GET /costs/1/edit
  def edit
  end

  # POST /costs
  # POST /costs.json
  def create
    @cost = Cost.new(cost_params)
    @cost.ficha_id = @ficha.id
    respond_to do |format|
      if @cost.save
        format.html { redirect_to ficha_costs_path(@ficha), notice: 'Cost was successfully created.' }
        format.json { render :show, status: :created, location: @cost }
      else
        format.html { render :new }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costs/1
  # PATCH/PUT /costs/1.json
  def update
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to ficha_costs_path(@ficha), notice: 'Cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost }
      else
        format.html { render :edit }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.json
  def destroy
    @cost.destroy
    respond_to do |format|
      format.html { redirect_to ficha_costs_url(@ficha), notice: 'Cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @ficha = Ficha.find(params[:ficha_id])
      @cost = Cost.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:cost).permit(:producto, :lote, :cant, :und, :detalle, :vr_unit, :vr_total, :cant2, :und2, :detalle2, :vr_unit2, :vr_total2, :t_costo_mat, :t_costo_mano, :cost_to_prod, :cost_uni_prod, :ficha_id)
    end
end
