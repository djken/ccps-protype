class SessionencoursController < ApplicationController
  before_action :set_sessionencour, only: [:show, :edit, :update, :destroy]

  # GET /sessionencours
  def index
    @sessionencours = Sessionencour.all
  end

  # GET /sessionencours/1
  def show
  end

  # GET /sessionencours/new
  def new
    @sessionencour = Sessionencour.new
  end

  # GET /sessionencours/1/edit
  def edit
  end

  # POST /sessionencours
  def create
    @sessionencour = Sessionencour.new(sessionencour_params)

    if @sessionencour.save
      redirect_to sessionencours_url, notice: 'Sessionencour was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sessionencours/1
  def update
    if @sessionencour.update(sessionencour_params)
      redirect_to sessionencours_url, notice: 'Sessionencour was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sessionencours/1
  def destroy
    @sessionencour.destroy
    redirect_to sessionencours_url, notice: 'Sessionencour was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sessionencour
      @sessionencour = Sessionencour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sessionencour_params
      params.require(:sessionencour).permit(:etatsession, :datedebut, :datefin)
    end
end
