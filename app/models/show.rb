class Show < ActiveRecord::Base
  
  def highest_rating
    Show.maximum(:rating)
  end
  
  def most_popular_show
    Show.maximum(:rating)
  end
  
  def lowest_rating
    Show.minimum(:rating)
  end
  
  def least_popular_show
    Show.minimum(:rating)
  end
  
  def ratings_sum
    Show.sum(:ratings)
  end
  
  def popular_shows
    Show.where("rating > ?", 5)
  end
  
  def shows_by_alphabetical_order
    Show.order
  end
  
end