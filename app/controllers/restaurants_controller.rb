class RestaurantsController < ApplicationController
  access all: [:show, :index], user: :all , admin: :all
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = if params[:search]
      Restaurant.where('name ILIKE ?', "%#{params[:search]}%")
    else
      @restaurants = Restaurant.all
    end

  end


  def show
    @random_rest = get_random_restaurant

    
  end


  def new
    @restaurant = Restaurant.new
  end


  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    # byebug
      respond_to do |format|
        if @restaurant.update(restaurant_params)
          format.html { redirect_to @restaurant, notice: 'Blog was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
      # byebug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :location, :price, :link, :user_id, :category_id)
    end

    def get_random_restaurant
      ids = []
      Restaurant.all.each { |r| ids.push r.id }
      Restaurant.find(ids.sample)
    end

end
