class AppointmentsController < ApplicationController
  before_action :get_appointment, only: [:show, :edit, :update, :destroy] # do destroy
   before_action :authorized

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
    render :new
    @all_venues
  end

  def create
    venue = WeddingVenue.find(appointment_params[:wedding_venue_id])
    @appointment = Appointment.create!(user: current_user, wedding_venue: venue, date: appointment_params[:date])
    if @appointment.valid?
      redirect_to current_user
    else
      render :new
    end
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to @appointment
  end

  def destroy
    app = Appointment.find(params[:id])
    if current_user == app.user
    app.destroy
    redirect_to user_path(current_user)
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :user_id, :wedding_venue_id, :is_private)
  end

  def get_appointment
    @appointment = Appointment.find(params[:id])
  end
  def user_weddings
    @all_venues = WeddingVenue.all
  end
end
