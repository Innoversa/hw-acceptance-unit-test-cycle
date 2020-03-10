class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.get_same_directors(director)
    @same_directors = Movie.where(:director => director).pluck(:title)
    return @same_directors
  end
end
