module ApplicationHelper

  def price_change restaurant
   if restaurant.price == 1 
      '$'.html_safe
    elsif restaurant.price == 2 
      '$$'.html_safe
    elsif restaurant.price == 3 
      '$$$'.html_safe
    else 
      'NA'.html_safe
    end
  end
end
