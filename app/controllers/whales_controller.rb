class WhalesController < ApplicationController
  before_action :set_whale, only: [:show, :edit, :update, :destroy]

  def index
    @whales = Whale.all
  end

  def report
    ReportWorker.perform_async
    render text: "REQUEST ADDED!"
    # redirect_to whales_path
  end

  # GET /whales/1
  def show
    RideJob.perform_now
  end

  # GET /whales/new
  def new
    @whale = Whale.new
  end

  # GET /whales/1/edit
  def edit
  end

  # POST /whales
  def create
    @whale = Whale.new(whale_params)

    if @whale.save
      redirect_to @whale, notice: 'Whale was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /whales/1
  def update
    if @whale.update(whale_params)
      redirect_to @whale, notice: 'Whale was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /whales/1
  def destroy
    @whale.destroy
    redirect_to whales_url, notice: 'Whale was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whale
      @whale = Whale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def whale_params
      params.require(:whale).permit(:name, :weight)
    end
end
