class TripsController < ApplicationController

  before_action :authenticate_user!

  def index

    require 'faraday'
    require 'json'
 
    api_key = "473990085emsh11f29071f5aa124p135b00jsn61a4264fcdf8"
    base_url = 'https://restcountries-v1.p.rapidapi.com/all'
    con = Faraday.new 

    res = con.get do |req| 
      req.url base_url
      req.headers['X-RapidAPI-Host'] = 'restcountries-v1.p.rapidapi.com'
      req.headers['X-RapidAPI-Key'] = api_key
  end

    countries = JSON.parse(res.body, object_class: OpenStruct)
   
    rand1 = rand(0..countries.count - 1)
    rand2 = rand(0..countries.count - 1)
    rand3 = rand(0..countries.count - 1)
    rand4 = rand(0..countries.count - 1)
   
    @get_countryname1 = countries[rand1].name
    @get_countryname2 = countries[rand2].name
    @get_countryname3 = countries[rand3].name
    @get_countryname4 = countries[rand4].name
   



  #  @get_todo = todo[index_count].title
  #  @get_completed = todo[index_count].completed
  #  @get_description = todo[index_count].description
  
    

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
