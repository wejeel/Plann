class SuggestionsBoxHotelsController < ApplicationController
  before_action :set_suggestions_box_hotel, only: [:show, :edit, :update, :destroy]

  # GET /suggestions_box_hotels
  # GET /suggestions_box_hotels.json
  def index
    @suggestions_box_hotels = SuggestionsBoxHotel.all
  end

  # GET /suggestions_box_hotels/1
  # GET /suggestions_box_hotels/1.json
  def show
  end

  # GET /suggestions_box_hotels/new
  def new
    @suggestions_box_hotel = SuggestionsBoxHotel.new
  end

  # GET /suggestions_box_hotels/1/edit
  def edit
  end

  # POST /suggestions_box_hotels
  # POST /suggestions_box_hotels.json
  def create
    @suggestions_box_hotel = SuggestionsBoxHotel.new(suggestions_box_hotel_params)

    respond_to do |format|
      if @suggestions_box_hotel.save
        format.html { redirect_to @suggestions_box_hotel, notice: 'Suggestions box hotel was successfully created.' }
        format.json { render :show, status: :created, location: @suggestions_box_hotel }
      else
        format.html { render :new }
        format.json { render json: @suggestions_box_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestions_box_hotels/1
  # PATCH/PUT /suggestions_box_hotels/1.json
  def update
    respond_to do |format|
      if @suggestions_box_hotel.update(suggestions_box_hotel_params)
        format.html { redirect_to @suggestions_box_hotel, notice: 'Suggestions box hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestions_box_hotel }
      else
        format.html { render :edit }
        format.json { render json: @suggestions_box_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestions_box_hotels/1
  # DELETE /suggestions_box_hotels/1.json
  def destroy
    @suggestions_box_hotel.destroy
    respond_to do |format|
      format.html { redirect_to suggestions_box_hotels_url, notice: 'Suggestions box hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestions_box_hotel
      @suggestions_box_hotel = SuggestionsBoxHotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestions_box_hotel_params
      params.require(:suggestions_box_hotel).permit(:hotel_name, :pernight, :decimal, :country, :city, :rating, :image, :buffet, :hall, :gym)
    end
end
