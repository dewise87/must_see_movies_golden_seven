class DirectorsController < ApplicationController

  # READ
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id]})
  end

  # CREATE
  def new_form

  end

  def create_row
    @director = Director.new
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save

    render("show")
  end

  # DELETE
  def destroy
    @director = Director.find_by({ :id => params[:id]})
    @director.destroy
  end

  # Update
  def edit_form
    @director = Director.find_by({ :id => params[:id]})
  end

  def update_row
    @director = Director.find_by({ :id => params[:id]})
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save

    render("show")
  end

end
