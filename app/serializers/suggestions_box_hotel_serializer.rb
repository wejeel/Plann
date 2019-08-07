class SuggestionsBoxHotelSerializer < ActiveModel::Serializer
  attributes :id, :hotel_name, :pernight, :country, :city, :rating, :image, :buffet, :hall, :gym
end
