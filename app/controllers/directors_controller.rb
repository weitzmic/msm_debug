class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    render("directors/show_details.html.erb")
  end

  def new_form
    render("directors/new_form.html.erb")
  end

  def create_row
    # @director = Director.find(params[:id])
    @director = Director.new
    @director.dob = params[:the_dob]
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]

    @director.save

    render("directors/show_details.html.erb")
  end

  def edit_form
    @director = Director.find(params[:id])
    render("directors/edit_form.html.erb")
  end

  def update_row
    @director = Director.find(params[:id])
    @director.dob = params[:the_dob]
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]

    @director.save

    render("directors/show_details.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
