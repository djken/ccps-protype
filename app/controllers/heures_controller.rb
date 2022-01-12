class HeuresController < ApplicationController
  before_action :set_heure, only: [:show, :edit, :update, :destroy]

  # GET /heures
  def index
    @heures = Heure.all
  end

  # GET /heures/1
  def show
  end

  # GET /heures/new
  def new
    @heure = Heure.new
  end

  # GET /heures/1/edit
  def edit
  end

  # POST /heures
  def create
    @heure = Heure.new(heure_params)

    if @heure.save
      redirect_to @heure, notice: 'Heure was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /heures/1
  def update
    if @heure.update(heure_params)
      redirect_to @heure, notice: 'Heure was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /heures/1
  def destroy
    @heure.destroy
    redirect_to heures_url, notice: 'Heure was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heure
      @heure = Heure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def heure_params
      params.require(:heure).permit(:heurecours)
    end
end
