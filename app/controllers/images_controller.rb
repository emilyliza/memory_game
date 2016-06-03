class ImagesController < ApplicationController
  before_action :set_deck

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @deck.save
    redirect_to :back
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @deck.save
    redirect_to :back
  end

  private

  def set_deck
    @deck = Deck.find(params[:deck_id])
  end

  def add_more_images(new_images)
    images = @deck.images 
    images += new_images
    @deck.images = images
  end

  def remove_image_at_index(index)
    remain_images = @deck.images # copy the array
    deleted_image = remain_images.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    @deck.images = remain_images # re-assign back
  end

  def images_params
    params.require(:deck).permit({images: []})
  end  
end