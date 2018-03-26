class HiresController < ApplicationController
  before_action :set_hire, only: [:show, :edit, :update, :destroy]

  def index
    @hires = Hire.all
  end


  def show
  end

  def new
    @hire = Hire.new
  end

  def edit
  end

  def create
    @hire = Hire.new(hire_params)

    respond_to do |format|
      if @hire.save
        format.html { redirect_to @hire, notice: 'Hire was successfully created.' }
        format.json { render :show, status: :created, location: @hire }
      else
        format.html { render :new }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hire.update(hire_params)
        format.html { redirect_to @hire, notice: 'Hire was successfully updated.' }
        format.json { render :show, status: :ok, location: @hire }
      else
        format.html { render :edit }
        format.json { render json: @hire.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @hire.destroy
    respond_to do |format|
      format.html { redirect_to hires_url, notice: 'Hire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_hire
      @hire = Hire.find(params[:id])
    end

    def hire_params
      params.require(:hire).permit(:company_id, :person_id, :created_at)
    end
end
