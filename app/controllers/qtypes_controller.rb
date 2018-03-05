class QtypesController < ApplicationController
  before_action :set_qtype, only: [:show, :edit, :update, :destroy]

  def index
    @qtypes = Qtype.all
  end

  def show
  end

  def new
    @qtype = Qtype.new
  end

  def edit
  end

  def create
    @qtype = Qtype.new(qtype_params)
    @qtype.user = current_user.id

    respond_to do |format|
      if @qtype.save
        format.html { redirect_to @qtype, notice: 'Qtype was successfully created.' }
        format.json { render :show, status: :created, location: @qtype }
      else
        format.html { render :new }
        format.json { render json: @qtype.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @qtype.update(qtype_params)
        format.html { redirect_to @qtype, notice: 'Qtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @qtype }
      else
        format.html { render :edit }
        format.json { render json: @qtype.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @qtype.destroy
    respond_to do |format|
      format.html { redirect_to qtypes_url, notice: 'Qtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_qtype
      @qtype = Qtype.find(params[:id])
    end

    def qtype_params
      params.require(:qtype).permit(:name)
    end
end
