module API
    module V1
      class Task < Grape::API
        include API::V1::Defaults
  
        resource :tasks do

          desc "Return all graduates"
          get "", root: "tasks" do
            ::Task.all
          end
  
          desc "Return a graduate"
          params do
            requires :id, type: String, desc: "ID of the 
              graduate"
          end
          get ":id", root: "tasks" do
            ::Task.where(id: permitted_params[:id]).first!
          end
        end

      end

      
    end
  end