class MoviesController < ApplicationController
  def search
    @movies = Movie.all
  end

    def create
      @title = params[:title]
      SearchMovie.new(@title).perform
      redirect_to '/index'
    end

  def index
  end
end
