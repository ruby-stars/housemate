class HousesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  # GET /houses
  # GET /houses.json
  def index
    @houses = House.all
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
    @groups = Group.all
    @house_manager = @house.mates.find { |mate| mate.house_manager?}.user
  end

  # GET /houses/new
  def new
    @house = House.new
    @house.HouseImage = params[:file]

    @house.HouseImage.url # => '/url/to/file.png'
    @house.HouseImage.thumb.url # => '/url/to/file.png' 200x200px
    @house.HouseImage.small_thumb.url # => '/url/to/file.png' 20x20px
    @house.HouseImage.current_path # => 'path/to/file.png'
    @house.HouseImage_identifier # => 'file.png'

  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  # POST /houses.json
  def create
    @house = House.new(house_params)
    @mate = Mate.new(user: current_user, house: @house, house_manager: true )

    respond_to do |format|
      if @house.save && @mate.save
        format.html { redirect_to @house, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    if cannot? :destroy, @house
      respond_to do |format|
        format.html { redirect_to houses_url, notice: 'You are not authorized to delete the house.' }
        format.json { head :no_content }
      end
    else
      @house.destroy
      respond_to do |format|
      format.html { redirect_to houses_url, notice: 'House was successfully destroyed.' }
      format.json { head :no_content }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:name, :street, :number, :additionalinfo, :postalcode, :city, :about, :HouseImage )
    end
end
