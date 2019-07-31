class SuggestionsBoxTripsController < ApplicationController
  before_action :set_suggestions_box_trip, only: [:show, :edit, :update, :destroy]

  # GET /suggestions_box_trips
  # GET /suggestions_box_trips.json
  def index
    @suggestions_box_trips = SuggestionsBoxTrip.all
  end

  # GET /suggestions_box_trips/1
  # GET /suggestions_box_trips/1.json
  def show
  end

  # GET /suggestions_box_trips/new
  def new
    @suggestions_box_trip = SuggestionsBoxTrip.new
  end

  # GET /suggestions_box_trips/1/edit
  def edit
  end

  # POST /suggestions_box_trips
  # POST /suggestions_box_trips.json
  def create
    @suggestions_box_trip = SuggestionsBoxTrip.new(suggestions_box_trip_params)

    respond_to do |format|
      if @suggestions_box_trip.save
        format.html { redirect_to @suggestions_box_trip, notice: 'Suggestions box trip was successfully created.' }
        format.json { render :show, status: :created, location: @suggestions_box_trip }
      else
        format.html { render :new }
        format.json { render json: @suggestions_box_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestions_box_trips/1
  # PATCH/PUT /suggestions_box_trips/1.json
  def update
    respond_to do |format|
      if @suggestions_box_trip.update(suggestions_box_trip_params)
        format.html { redirect_to @suggestions_box_trip, notice: 'Suggestions box trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestions_box_trip }
      else
        format.html { render :edit }
        format.json { render json: @suggestions_box_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestions_box_trips/1
  # DELETE /suggestions_box_trips/1.json
  def destroy
    @suggestions_box_trip.destroy
    respond_to do |format|
      format.html { redirect_to suggestions_box_trips_url, notice: 'Suggestions box trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestions_box_trip
      @suggestions_box_trip = SuggestionsBoxTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestions_box_trip_params
      params.require(:suggestions_box_trip).permit(:name, :description, :image_url, :rating)
    end
end
