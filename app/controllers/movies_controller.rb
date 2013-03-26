class MoviesController < ApplicationController

  before_filter :load_movie, :only => [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def edit
  end

  def update
    if @movie.update_attributes(params[:movie])
      redirect_to movie_path(@movie)
    else
      render :action => 'edit'
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :action => 'new'
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

private

  def load_movie
    @movie = Movie.find(params[:id])
  end

end
