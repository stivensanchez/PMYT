class EnsamblesController < ApplicationController
  before_action :set_ensamble, only: [:show, :edit, :update, :destroy]

  # GET /ensambles
  # GET /ensambles.json
  def index
    @ensambles = Ensamble.all
  end

  # GET /ensambles/1
  # GET /ensambles/1.json
  def show
  end

  # GET /ensambles/new
  def new
    @ensamble = Ensamble.new
  end

  # GET /ensambles/1/edit
  def edit
  end

  # POST /ensambles
  # POST /ensambles.json
  def create
    @ensamble = Ensamble.new(ensamble_params)

    respond_to do |format|
      if @ensamble.save
        format.html { redirect_to @ensamble, notice: 'Ensamble was successfully created.' }
        format.json { render :show, status: :created, location: @ensamble }
      else
        format.html { render :new }
        format.json { render json: @ensamble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensambles/1
  # PATCH/PUT /ensambles/1.json
  def update
    respond_to do |format|
      if @ensamble.update(ensamble_params)
        format.html { redirect_to @ensamble, notice: 'Ensamble was successfully updated.' }
        format.json { render :show, status: :ok, location: @ensamble }
      else
        format.html { render :edit }
        format.json { render json: @ensamble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensambles/1
  # DELETE /ensambles/1.json
  def destroy
    @ensamble.destroy
    respond_to do |format|
      format.html { redirect_to ensambles_url, notice: 'Ensamble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ensamble
      @ensamble = Ensamble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ensamble_params
      params.require(:ensamble).permit(:operation_id, :sam, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios, :observaciones, :imagen)
    end
end
