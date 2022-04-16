class VolumesController < ApplicationController
  def edit
    @volume = Volume.find params[:id]
  end

  def update
    volume = Volume.find params[:id]
    volume.update volume_params
    manga = volume.manga
    redirect_to manga
  end

  

  def destroy
    volume = Volume.find params[:id]
    volume.destroy
    manga = volume.manga
    redirect_to manga
  end

  private
  def volume_params
    params.require(:volume).permit(:price)
  end
end
