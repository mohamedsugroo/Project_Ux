class ConstatusesController < ApplicationController
  before_action :set_constatus, only: [:show, :edit, :update, :destroy]

  def index
    @constatuses = Constatus.all
  end

  def show
  end

  def new
    @constatus = Constatus.new
  end

  def edit
  end

  def create
    @constatus = Constatus.new(constatus_params)

    respond_to do |format|
      if @constatus.save
        format.html { redirect_to @constatus, notice: 'Constatus was successfully created.' }
        format.json { render :show, status: :created, location: @constatus }
      else
        format.html { render :new }
        format.json { render json: @constatus.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @constatus.update(constatus_params)
        format.html { redirect_to @constatus, notice: 'Constatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @constatus }
      else
        format.html { render :edit }
        format.json { render json: @constatus.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @constatus.destroy
    respond_to do |format|
      format.html { redirect_to constatuses_url, notice: 'Constatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_constatus
      @constatus = Constatus.find(params[:id])
    end

    def constatus_params
      params.require(:constatus).permit(:person_id, :verification_id, :note, :created_at, :updated_at)
    end
end
