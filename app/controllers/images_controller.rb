class ImagesController < ApplicationController
  def index
    @image = Image.new
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.create(params[:image])
    redirect_to image_path(@image.id)
  end
end
