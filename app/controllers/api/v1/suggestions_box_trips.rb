module API
    module V1
      class SuggestionsBoxTrips < Grape::API
        include API::V1::Defaults
  
        resource :trips_suggestions do

          desc "Return all graduates"
          get "", root: "trips_suggestions" do
            ::SuggestionsBoxTrip.all
          end
  
          desc "Return a trip"
          params do
            requires :id, type: String, desc: "ID of the trip"
          end
          get ":id", root: "trips" do
            ::SuggestionsBoxTrip.where(id: permitted_params[:id]).first!
          end


        end

      end
    end
  end