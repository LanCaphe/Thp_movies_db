require 'themoviedb-api'
require 'dotenv'
Dotenv.load('.env')
Tmdb::Api.key(ENV["API_KEY"])

class SearchMovie

  def initialize(title)
    @title = title
  end

  def perform

    movie_title = []
    movie_date = []

    Tmdb::Search.movie(@title).results[1]

    movie_title << search.original_title
    movie_date << search.release_date

    @movie_hash = Hash[title.zip(movie_date)]

  end

  def save
    Movie.create(name: "#{@name}", value: "#{@movie_hash.values_at("#{@name}")}")
  end

end
