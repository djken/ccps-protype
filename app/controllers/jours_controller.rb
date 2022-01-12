class JoursController < ApplicationController
  before_action :set_jour, only: [:show, :edit, :update, :destroy]

  # GET /jours
  def index
    @jours = Jour.all
  end

  # GET /jours/1
  def show
  end

  # GET /jours/new
  def new
    @jour = Jour.new
  end

  # GET /jours/1/edit
  def edit
  end

  # POST /jours
  def create
    @jour = Jour.new(jour_params)

    if @jour.save
      redirect_to @jour, notice: 'Jour was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jours/1
  def update
    if @jour.update(jour_params)
      redirect_to @jour, notice: 'Jour was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jours/1
  def destroy
    @jour.destroy
    redirect_to jours_url, notice: 'Jour was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jour
      @jour = Jour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jour_params
      params.require(:jour).permit(:nomjour)
    end
end
