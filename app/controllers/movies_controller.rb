class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
      redirect_to movie_path(@movie)
    else
      render :action => 'edit'
    end
  end

  def new
    @movie = Movie.new
  end

end
