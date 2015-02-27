class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /groups
  # GET /groups.json
  def index
    @groups = @modulo.groups.all
    #descargar en xls (excel)
   respond_to do |format|
      format.html
      format.csv { send_data @groups.to_csv }
      format.xls
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)
    @group.modulo_id = @modulo.id
    respond_to do |format|
      if @group.save
        format.html { redirect_to modulo_groups_path(@modulo), notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to modulo_groups_path(@modulo), notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to modulo_groups_url(@modulo), notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @modulo = Modulo.find(params[:modulo_id])
      @group = Group.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:nombre, :num_ficha, :modulo_id)
    end
end
