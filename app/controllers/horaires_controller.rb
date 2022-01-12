class HorairesController < ApplicationController
  before_action :set_horaire, only: [:show, :edit, :update, :destroy]

  # GET /horaires
  def index
    @horaires = Horaire.all
    # @horaire = Horaire.where(params[:id => :sessionencour_id])
  end

  # GET /horaires/1
  def show
  end

  # GET /horaires/new
  def new
    @horaire = Horaire.new
  end

  # GET /horaires/1/edit
  def edit
  end

  # POST /horaires
  def create
    @horaire = Horaire.new(horaire_params)
    if @horaire.save
      redirect_to horaires_path, notice: 'Horaire was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /horaires/1
  def update
    if @horaire.update(horaire_params)
      redirect_to @horaire, notice: 'Horaire was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /horaires/1
  def destroy
    @horaire.destroy
    redirect_to horaires_url, notice: 'Horaire was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horaire
      @horaire = Horaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horaire_params
      params.require(:horaire).permit(:sessionencour_id, :jour_id, :cour_id, :heure_id, :salle_id)
    end

end
