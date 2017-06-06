class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos_params.create(photo_params)
    redirect_to place_path(@place)
  end



private

  def photo_params
    params.require(:photo).permit(:description)
  end

end



