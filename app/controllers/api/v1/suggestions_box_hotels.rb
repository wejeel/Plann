module API
    module V1
      class SuggestionsBoxHotels < Grape::API
        include API::V1::Defaults
  
        resource :hotels_suggestions do

          desc "Return all hotels"
          get "", root: "hotels_suggestions" do
            ::SuggestionsBoxHotel.all
          end
  
          desc "Return a hotel"
          params do
            requires :id, type: String, desc: "ID of the hotel"
          end
          get ":id", root: "trips" do
            ::SuggestionsBoxHotel.where(id: permitted_params[:id]).first!
          end


        end

      end
    end
  end