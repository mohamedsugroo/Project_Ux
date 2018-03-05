class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  before_action :set_job

  def index
    @bids = Bid.all
  end

  def show
  end

  def new
    @bid = Bid.new
  end

  def edit
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.user = current_user.id
    @bid.job = @job.id


    respond_to do |format|
      if @bid.save
        format.html { redirect_to @job, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @job, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to job_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bid
      @bid = Bid.find(params[:id])
    end

    def set_job
      @job = Job.find(params[:job_id])
    end

    def bid_params
      params.require(:bid).permit(:hourly_rate, :number_of_hours, :note)
    end
end
