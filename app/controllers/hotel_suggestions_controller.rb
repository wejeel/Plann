class HotelSuggestionsController < ApplicationController
  def index
    @suggestion =  SuggestionsBoxHotel.order('RANDOM()').first

   @get_hotel_name = @suggestion.hotel_name
   @get_pernight = @suggestion.pernight
   @get_country = @suggestion.country
   @get_city = @suggestion.city
   @get_rating = @suggestion.rating
   @get_image = @suggestion.image
   @get_buffet = @suggestion.buffet
   @get_hall = @suggestion.hall
   @get_gym = @suggestion.gym

  end
end
