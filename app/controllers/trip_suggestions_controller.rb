class TripSuggestionsController < ApplicationController
  def index

   @suggestion =  SuggestionsBoxTrip.order('RANDOM()').first

   @get_name = @suggestion.name
   @get_description = @suggestion.description
   @get_rating = @suggestion.rating
   @get_image = @suggestion.image_url

  end
end
