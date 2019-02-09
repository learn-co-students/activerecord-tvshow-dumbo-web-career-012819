require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.maximum(:rating)
    end

    def self.most_popular_show
        highest = self.highest_rating
        Show.all.find_by(rating: highest)
    end

    def self.least_popular_show
       lowest = Show.all.minimum(:rating)
        Show.all.find_by(rating: lowest)
    end

    def self.lowest_rating
        Show.all.minimum(:rating)
    end

    def self.ratings_sum
        Show.all.sum("rating")
    end

    def self.popular_shows
        Show.all.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.all.order(:name)
    end
end
