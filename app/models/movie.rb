class Movie < ApplicationRecord
  def Movie.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    if ratings_list.nil? || ratings_list.empty?
      Movie.all
    else
      Movie.where(rating: ratings_list)
    end
  end
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
end
