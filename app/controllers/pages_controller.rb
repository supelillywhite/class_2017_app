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
      ids = []
      Restaurant.all.each { |r| ids.push r.id }
      Restaurant.find(ids.sample)
  end
  
end
