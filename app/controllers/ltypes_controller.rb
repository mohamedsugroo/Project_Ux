class LtypesController < ApplicationController
  before_action :set_ltype, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

  # GET /ltypes
  # GET /ltypes.json
  def index
    @ltypes = Ltype.all
  end

  # GET /ltypes/1
  # GET /ltypes/1.json
  def show
  end

  # GET /ltypes/new
  def new
    @ltype = Ltype.new
  end

  # GET /ltypes/1/edit
  def edit
  end

  # POST /ltypes
  # POST /ltypes.json
  def create
    @ltype = Ltype.new(ltype_params)

    respond_to do |format|
      if @ltype.save
        format.html { redirect_to @ltype, notice: 'Ltype was successfully created.' }
        format.json { render :show, status: :created, location: @ltype }
      else
        format.html { render :new }
        format.json { render json: @ltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ltypes/1
  # PATCH/PUT /ltypes/1.json
  def update
    respond_to do |format|
      if @ltype.update(ltype_params)
        format.html { redirect_to @ltype, notice: 'Ltype was successfully updated.' }
        format.json { render :show, status: :ok, location: @ltype }
      else
        format.html { render :edit }
        format.json { render json: @ltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ltypes/1
  # DELETE /ltypes/1.json
  def destroy
    @ltype.destroy
    respond_to do |format|
      format.html { redirect_to ltypes_url, notice: 'Ltype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ltype
      @ltype = Ltype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ltype_params
      params.require(:ltype).permit(:name)
    end
end
