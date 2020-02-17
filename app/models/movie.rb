class Movie < ActiveRecord::Base
  def self.get_ratings
    Movie.select(:rating).uniq.map { |movie| movie.rating }.sort
  end

end
