class Show < ActiveRecord::Base

    ##THE HIGHEST RATING
    def self.highest_rating
        Show.maximum(:rating)
    end

    ##RETURN SHOW WITH THE HIGHEST RATING
    def self.most_popular_show
        Show.where("rating = ?", self.highest_rating).first
    end

    ## RETURN THE LOWEST VALUE IN THE RATINGS COLUMN
    def self.lowest_rating
        Show.minimum(:rating)
    end

    ## RETURN THE SHOW WITH THE LOWEST RATING
    def self.least_popular_show
        Show.where("rating = ?", self.lowest_rating).first
    end

    ## RETURN A SUM OF ALL THE RATINGS
    def self.ratings_sum
        Show.sum(:rating)
    end

    ##RETURN A LIST OF ALL SHOWS THAT HAVE RATING MORE THAN 5
    def self.popular_shows
        Show.where("rating > ?",5)
    end

    ## SHOWS BY ALPHABETICAL ORDER
    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end