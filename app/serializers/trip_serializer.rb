class TripSerializer < ActiveModel::Serializer
    attributes :trip_owner, :tripname, :tripbudget, :tripdate, :travel_duration, :travel_mode, :trip_location, :created_at
end
