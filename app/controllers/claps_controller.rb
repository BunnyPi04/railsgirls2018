class ClapsController < ApplicationController
  before_action :set_clap, only: [:show, :edit, :update, :destroy]

  # GET /claps
  # GET /claps.json
  def index
    @claps = Clap.all
  end

  # GET /claps/1
  # GET /claps/1.json
  def show
  end

  # GET /claps/new
  def new
    @clap = Clap.new
  end

  # GET /claps/1/edit
  def edit
  end

  # POST /claps
  # POST /claps.json
  def create
    @clap = Clap.new(clap_params)

    respond_to do |format|
      if @clap.save
        format.html { redirect_to @clap, notice: 'Clap was successfully created.' }
        format.json { render :show, status: :created, location: @clap }
      else
        format.html { render :new }
        format.json { render json: @clap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claps/1
  # PATCH/PUT /claps/1.json
  def update
    respond_to do |format|
      if @clap.update(clap_params)
        format.html { redirect_to @clap, notice: 'Clap was successfully updated.' }
        format.json { render :show, status: :ok, location: @clap }
      else
        format.html { render :edit }
        format.json { render json: @clap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claps/1
  # DELETE /claps/1.json
  def destroy
    @clap.destroy
    respond_to do |format|
      format.html { redirect_to claps_url, notice: 'Clap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clap
      @clap = Clap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clap_params
      params.require(:clap).permit(:user_name, :idea_id)
    end
end
