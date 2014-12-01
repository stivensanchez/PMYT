class OpersController < ApplicationController
  before_action :set_oper, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /opers
  # GET /opers.json
  def index
    @opers = @group.opers.all
  end

  # GET /opers/1
  # GET /opers/1.json
  def show
  end

  # GET /opers/new
  def new
    @oper = Oper.new
  end

  # GET /opers/1/edit
  def edit
  end

  # POST /opers
  # POST /opers.json
  def create
    @oper = Oper.new(oper_params)
    @oper.group_id = @group.id
    respond_to do |format|
      if @oper.save
        format.html { redirect_to group_opers_path(@group), notice: 'Oper was successfully created.' }
        format.json { render :show, status: :created, location: @oper }
      else
        format.html { render :new }
        format.json { render json: @oper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opers/1
  # PATCH/PUT /opers/1.json
  def update
    respond_to do |format|
      if @oper.update(oper_params)
        format.html { redirect_to group_opers_path(@group), notice: 'Oper was successfully updated.' }
        format.json { render :show, status: :ok, location: @oper }
      else
        format.html { render :edit }
        format.json { render json: @oper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opers/1
  # DELETE /opers/1.json
  def destroy
    @oper.destroy
    respond_to do |format|
      format.html { redirect_to group_opers_url(@group), notice: 'Oper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oper
      @group = Group.find(params[:group_id])
      @oper = Oper.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oper_params
      params.require(:oper).permit(:tipo_doc_id, :numero_documento, :nombre, :apellido, :correo, :telefono, :group_id)
    end
end
