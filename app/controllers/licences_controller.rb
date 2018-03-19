class LicencesController < ApplicationController
  before_action :set_licence, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

  def index
    @licences = Licence.all
  end

  def show
  end

  def new
    @licence = Licence.new
  end

  def edit
  end

  def create
    @licence = Licence.new(licence_params)
    @licence.user = current_user.id

    respond_to do |format|
      if @licence.save
        format.html { redirect_to profile_path(current_user), notice: 'Licence was successfully created.' }
        format.json { render :show, status: :created, location: @licence }
      else
        format.html { render :new }
        format.json { render json: @licence.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @licence.update(licence_params)
        format.html { redirect_to profile_path(current_user), notice: 'Licence was successfully updated.' }
        format.json { render :show, status: :ok, location: @licence }
      else
        format.html { render :edit }
        format.json { render json: @licence.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @licence.destroy
    respond_to do |format|
      format.html { redirect_to profile_path(current_user), notice: 'Licence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_licence
      @licence = Licence.find(params[:id])
    end

    def licence_params
      params.require(:licence).permit(:number, :expiration_date, :user_id, :ltype_id)
    end
end
