class WeddingVenuesController < ApplicationController

  before_action :get_wedding_venue, only: [:show, :edit, :update, :destroy] # do destroy

  def index
    @wedding_venues = WeddingVenue.all
  end

  def show
  end

  def new
    @wedding_venue = WeddingVenue.new
    all_caters
  end

  def create
    @wedding_venue = WeddingVenue.create(wedding_venue_params)
    if @wedding_venue.valid?
    redirect_to @wedding_venue
    else
      render :new
    end
  end

  def edit
  end

  def update
    @wedding_venue.update(wedding_venue_params)
    if @wedding_venue.valid?
    redirect_to @wedding_venue
    else
      render :edit
    end
  end

  def destroy
    @wedding_venue.destroy
    redirect_to wedding_venues_path
  end

  private

  def all_caters
    @all = Cater.all
  end

  def wedding_venue_params
    params.require(:wedding_venue).permit(:name, :location, :cost, :full_bar, :guest_accommodation, :wedding_style, :img_url, :cater_ids)
  end

  def get_wedding_venue
    @wedding_venue = WeddingVenue.find(params[:id])
  end

end
