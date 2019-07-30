class TripsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def createTrip

    #collect POST parameters
    
    @tripname = params[:tripname]
    @tripbudget = params[:tripbudget]
    @tripdate = params[:tripdate]    
    @travel_duration = params[:travel_duration]
    @travel_mode = params[:travel_mode]
    @trip_location = params[:trip_location]


    @newTrip = Trip.new
    @newTrip.trip_owner = current_user.email
    @newTrip.tripname = @tripname
    @newTrip.tripbudget = @tripbudget
    @newTrip.tripdate = @tripdate
    @newTrip.travel_duration =  @travel_duration
    @newTrip.travel_mode =  @travel_mode
    @newTrip.trip_location = @trip_location
  
  #store to database!
   @newTrip.save


  end
end
