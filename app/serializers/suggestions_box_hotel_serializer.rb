class SuggestionsBoxHotelSerializer < ActiveModel::Serializer
  attributes :id, :hotel_name, :pernight, :decimal, :country, :city, :rating, :image, :buffet, :hall, :gym
end
