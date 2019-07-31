class SuggestionsBoxTripSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :rating
end
