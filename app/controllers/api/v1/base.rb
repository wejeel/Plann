require "grape-swagger"

module API
  module V1
    class Base < Grape::API
      mount API::V1::Task
      mount API::V1::Trip
      mount API::V1::SuggestionsBoxTrips
      mount API::V1::SuggestionsBoxHotels

    
      add_swagger_documentation(
        api_version: "v1",
        hide_documentation_path: true,
        mount_path: "https://destinationl-planner-cas.herokuapp.com/api/v1/swagger_doc",
        hide_format: true
      )

    end
  end
end