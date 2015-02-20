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
      params.require(:cost).permit(:producto, :lote, :cant, :cant001, :cant002, :cant003, :cant004, :cant005, :cant006, :cant007, :und, :und001, :und002, :und003, :und004, :und005, :und006, :und007, :detalle, :detalle001, :detalle002, :detalle003, :detalle004, :detalle005, :detalle006, :detalle007, :vr_unit, :vr_unit001, :vr_unit002, :vr_unit003, :vr_unit004, :vr_unit005, :vr_unit006, :vr_unit007,:vr_total, :vr_total001, :vr_total002, :vr_total003, :vr_total004, :vr_total005, :vr_total006, :vr_total007,:cant2, :cant2001, :cant2002, :cant2003, :cant2004, :cant2005, :cant2006, :cant2007, :und2, :und2001, :und2002, :und2003, :und2004, :und2005, :und2006, :und2007, :detalle2, :detalle2001, :detalle2002, :detalle2003, :detalle2004, :detalle2005, :detalle2006, :detalle2007, :vr_unit2, :vr_unit2001, :vr_unit2002, :vr_unit2003, :vr_unit2004, :vr_unit2005, :vr_unit2006, :vr_unit2007, :vr_total2, :vr_total2001, :vr_total2002, :vr_total2003, :vr_total2004, :vr_total2005, :vr_total2006, :vr_total2007, :t_costo_mat, :t_costo_mano, :cost_to_prod, :cost_uni_prod, :utilidad, :undutilidad, :pre_venta, :margen, :ficha_id)
    end
end
