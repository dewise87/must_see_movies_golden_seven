class MoviesController < ApplicationController

  # READ
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
  end

  # CREATE
  def new_form

  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show")
  end

  # DELETE
  def destroy
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.destroy
  end

  # Update
  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show")
  end

end
