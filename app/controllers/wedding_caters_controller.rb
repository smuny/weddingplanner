class WeddingCatersController < ApplicationController

  def new
    @wedding_cater = WeddingCater.new
    all_caters
  end

  def create

cater = Cater.find(wedding_cater_params[:cater_id])

venue = WeddingVenue.find(wedding_cater_params[:wedding_venue_id])
    @wedding_cater = WeddingCater.create!(cater: cater, wedding_venue: venue )
    redirect_to @wedding_venue

# wedding_cater needs wedding_venue_id and cater_id in params
# wedding_cater_params wont work because you need to pass in the instances not the id's. it can't read what :wedding_venue_id and cater_id is.

  end

  private

  def wedding_cater_params
    params.require(:wedding_cater).permit(:wedding_venue_id, :cater_id)
  end

  def all_caters
    @all = Cater.all
  end
end
