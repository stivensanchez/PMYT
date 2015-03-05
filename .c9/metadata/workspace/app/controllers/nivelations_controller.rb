{"changed":true,"filter":false,"title":"nivelations_controller.rb","tooltip":"/app/controllers/nivelations_controller.rb","value":"class NivelationsController < ApplicationController\n  before_action :set_nivelation, only: [:show, :edit, :update, :destroy, :index, :new, :create]\n\n  # GET /nivelations\n  # GET /nivelations.json\n  def index\n    #Development.select(\"operation_id\").where(\"oper_id=oper_id\") \n    @nivelations = @oper.nivelations.search(params[:search], params[:page])\n  end\n\n  # GET /nivelations/1\n  # GET /nivelations/1.json\n  def show\n  end\n\n  # GET /nivelations/new\n  def new\n    @nivelation = Nivelation.new\n  end\n\n  # GET /nivelations/1/edit\n  def edit\n  end\n\n  # POST /nivelations\n  # POST /nivelations.json\n  def create\n    @nivelation = Nivelation.new(nivelation_params)\n    @nivelation.oper_id = @oper.id\n    respond_to do |format|\n      if @nivelation.save\n        format.html { redirect_to  oper_nivelations_path(@oper), notice: 'Nivelation was successfully created.' }\n        format.json { render :show, status: :created, location: @nivelation }\n      else\n        format.html { render :new }\n        format.json { render json: @nivelation.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # PATCH/PUT /nivelations/1\n  # PATCH/PUT /nivelations/1.json\n  def update\n    respond_to do |format|\n      if @nivelation.update(nivelation_params)\n        format.html { redirect_to oper_nivelations_path(@oper), notice: 'Nivelation was successfully updated.' }\n        format.json { render :show, status: :ok, location: @nivelation }\n      else\n        format.html { render :edit }\n        format.json { render json: @nivelation.errors, status: :unprocessable_entity }\n      end\n    end\n  end\n\n  # DELETE /nivelations/1\n  # DELETE /nivelations/1.json\n  def destroy\n    @nivelation.destroy\n    respond_to do |format|\n      format.html { redirect_to oper_nivelations_url(@oper), notice: 'Nivelation was successfully destroyed.' }\n      format.json { head :no_content }\n    end\n  end\n\n  private\n    # Use callbacks to share common setup or constraints between actions.\n    def set_nivelation\n      @oper = Oper.find(params[:oper_id])\n      @nivelation = Nivelation.find(params[:id]) if params[:id]\n    end\n\n    # Never trust parameters from the scary internet, only allow the white list through.\n    def nivelation_params\n      params.require(:nivelation).permit(:oper_id, :development_id, :operation_id, :tiempo_sam, :tiempo_real, :desempeño, :comentario)\n    end\nend\n","undoManager":{"mark":22,"position":25,"stack":[[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":7,"column":81},"action":"remove","lines":["@nivelations = Development.select(\"operation_id\").where(\"oper_id = oper_id\") "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":11},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":81},"action":"insert","lines":["@nivelations = Development.select(\"operation_id\").where(\"oper_id = oper_id\") "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":68},"end":{"row":6,"column":69},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":69},"end":{"row":6,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"remove","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"remove","lines":["v"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["#"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":5},"end":{"row":6,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425595977905}