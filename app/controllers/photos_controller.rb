class PhotosController < ApplicationController

  #Create controllers
  def new_form
    render("photos/new_form.html.erb")
  end

  def create_row
    # The params look like this:
    # the_image_url => "URL"
    # the_caption => "Google logo"
    p=Photo.new
    p.source= params["image_url"]
    p.caption = params["caption"]
    p.save

    redirect_to("/photos")
  end


  #Read controllers
  def index
    @all_photos = Photo.all.order({:created_at => :desc})
    render("photos/index.html.erb")
  end

  def show

    id_number = params["the_id"]
    p = Photo.find(id_number)

    @the_caption = p.caption
    @the_image_url = p.source
    @created_at = p.created_at
    @id_number = p.id

    render("photos/show.html.erb")
  end

  #Update controllers
  def edit_form
    id_number = params["the_id"]
    p = Photo.find(id_number)

    @photo = p
    render("photos/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:the_id])
    p.source= params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos")
  end

  def delete_row
    p = Photo.find(params[:the_id])
    p.destroy
    redirect_to("/photos")
  end

end
