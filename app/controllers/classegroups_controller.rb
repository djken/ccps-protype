class ClassegroupsController < ApplicationController
  before_action :set_classegroup, only: [:show, :edit, :update, :destroy]

  # GET /classegroups
  def index
    @classegroups = Classegroup.all
  end

  # GET /classegroups/1
  def show
  end

  # GET /classegroups/new
  def new
    @classegroup = Classegroup.new
  end

  # GET /classegroups/1/edit
  def edit
  end

  # POST /classegroups
  def create
    @classegroup = Classegroup.new(classegroup_params)

    if @classegroup.save
      redirect_to @classegroup, notice: 'Classegroup was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /classegroups/1
  def update
    if @classegroup.update(classegroup_params)
      redirect_to @classegroup, notice: 'Classegroup was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /classegroups/1
  def destroy
    @classegroup.destroy
    redirect_to classegroups_url, notice: 'Classegroup was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classegroup
      @classegroup = Classegroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classegroup_params
      params.require(:classegroup).permit(:prenom, :nom, :devoirs, :intra, :final, :total, :remarques)
    end
end
