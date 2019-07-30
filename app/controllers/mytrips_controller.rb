class MytripsController < ApplicationController
  
  def index
        
# @myTrip = Trip.find_by(trip_owner: current_user.email)

@myTrip = Trip.where("trip_owner in (?)", [0, current_user.email])

@is_found = false

if @myTrip
    
    @is_found = true
    
end


  end
end
