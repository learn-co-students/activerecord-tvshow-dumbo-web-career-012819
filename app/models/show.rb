class Show < ActiveRecord::Base 
  def self.highest_rating 
    Show.maximum(:rating)
    # shows_arr = Show.all.map do |show|
    #   show.rating
    # end
    # shows_arr.sort[-1]
  end
  def self.most_popular_show 
    Show.all.each do |show|
      if show.rating == highest_rating
        return show
      end
    end
  end
  def self.lowest_rating 
    Show.minimum(:rating)
  end
  def self.least_popular_show 
    Show.all.each do |show|
      if show.rating == lowest_rating
        return show
      end
    end
  end
  def self.ratings_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    Show.where("rating > 5")
  end
  def self.shows_by_alphabetical_order 
    Show.order(:name)
  end
end