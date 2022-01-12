class CoursController < ApplicationController
  before_action :set_cour, only: [:show, :edit, :update, :destroy]

  # GET /cours
  def index
    @cours = Cour.all
  end

  # GET /cours/1
  def show
  end

  # GET /cours/new
  def new
    @cour = Cour.new
  end

  # GET /cours/1/edit
  def edit
  end

  # POST /cours
  def create
    @cour = Cour.new(cour_params)

    if @cour.save
      redirect_to @cour, notice: 'Cour was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cours/1
  def update
    if @cour.update(cour_params)
      redirect_to @cour, notice: 'Cour was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cours/1
  def destroy
    @cour.destroy
    redirect_to cours_url, notice: 'Cour was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cour
      @cour = Cour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cour_params
      params.require(:cour).permit(:nomcours)
    end
end
