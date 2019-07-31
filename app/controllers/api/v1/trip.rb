module API
    module V1
      class Trip < Grape::API
        include API::V1::Defaults
  
        resource :trips do

        #   desc "Return all graduates"
        #   get "", root: "tasks" do
        #     ::Task.all
        #   end
  
          desc "Return a trip"
          params do
            requires :id, type: String, desc: "ID of the trip"
          end
          get ":id", root: "trips" do
            ::Trip.where(id: permitted_params[:id]).first!
          end
        end

      end
    end
  end