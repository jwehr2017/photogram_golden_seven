class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
def show
  @photo = Photo.find_by({:id => params[:id]})

end
def new_form

end

def create_row

p= photo.new
p.caption = params[:the_caption]
p.source = params[:the_source]
p.save

render("create_row.html.erb")
redirect_to("http://localhost:3000/photos")
end

def destroy
p = Photo.find_by({:id => params[:id]})
p.destroy
redirect_to("http://localhost:3000/photos")
end

def edit
p = Photo.find_by({:id => params[:id]})
p.caption = params[:the_caption]
p.save

redirect_to("http://localhost:3000/photos")
end
end
