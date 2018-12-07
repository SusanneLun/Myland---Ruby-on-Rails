class IslandsController < ApplicationController
  before_action :set_island, only: [:show, :edit, :update, :destroy]

  # GET /islands
  # GET /islands.json
  def index
    @islands = Island.all
  end

  # GET /islands/1
  # GET /islands/1.json
  def show
    @month_values = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    @rent = Rent.new
    @current_user_rents = Rent.where(:user_id => current_user.id, :island_id => @island.id)
  end


  # GET /islands/new
  def new
    @island = Island.new
  end

  # GET /islands/1/edit
  def edit
  end

  # POST /islands
  # POST /islands.json
  def create
    @island = Island.new(island_params)

    respond_to do |format|
      if @island.save
        format.html { redirect_to @island, notice: 'Island was successfully created.' }
        format.json { render :show, status: :created, location: @island }
      else
        format.html { render :new }
        format.json { render json: @island.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /islands/1
  # PATCH/PUT /islands/1.json
  def update
    respond_to do |format|
      if @island.update(island_params)
        format.html { redirect_to @island, notice: 'Island was successfully updated.' }
        format.json { render :show, status: :ok, location: @island }
      else
        format.html { render :edit }
        format.json { render json: @island.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /islands/1
  # DELETE /islands/1.json
  def destroy
    @island.destroy
    respond_to do |format|
      format.html { redirect_to islands_url, notice: 'Island was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_island
      @island = Island.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def island_params
      params.require(:island).permit(:name, :country, :location, :description, :price, :month, :img_url, :thumbnail_img)
    end
end
