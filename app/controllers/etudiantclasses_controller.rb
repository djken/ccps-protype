class EtudiantclassesController < ApplicationController
  before_action :set_etudiantclass, only: [:show, :edit, :update, :destroy]

  # GET /etudiantclasses
  def index
    @etudiantclasses = Etudiantclass.all
  end

  # GET /etudiantclasses/1
  def show
  end

  # GET /etudiantclasses/new
  def new
    @etudiantclass = Etudiantclass.new
  end

  # GET /etudiantclasses/1/edit
  def edit
  end

  # POST /etudiantclasses
  def create
    @etudiantclass = Etudiantclass.new(etudiantclass_params)

    if @etudiantclass.save
      redirect_to @etudiantclass, notice: 'Etudiantclass was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /etudiantclasses/1
  def update
    if @etudiantclass.update(etudiantclass_params)
      redirect_to @etudiantclass, notice: 'Etudiantclass was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /etudiantclasses/1
  def destroy
    @etudiantclass.destroy
    redirect_to etudiantclasses_url, notice: 'Etudiantclass was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etudiantclass
      @etudiantclass = Etudiantclass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etudiantclass_params
      params.require(:etudiantclass).permit(:nomEtud, :prenomEtud, :naissanceEtud, :phoneEtud, :emailEtud, :addresseEtud, :villeEtud, horaire_ids:[])
      # params.require(:etudiantclass).permit(:nomEtud, :prenomEtud, :naissanceEtud, :phoneEtud, :emailEtud, :addresseEtud, :villeEtud, horaire_ids:[], horaires_attributes: [:horaireEtud])
    end
end
