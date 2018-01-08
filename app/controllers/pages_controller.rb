class PagesController < ApplicationController
  def home
    @random_rest = get_random_restaurant
  end

  def new
  end

  def create
  end

  private

  def get_random_restaurant
    Restaurant.find([*1..Restaurant.count].sample)
  end
  
end
