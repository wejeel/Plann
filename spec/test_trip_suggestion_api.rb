require 'rails_helper'

# RSpec.describe TicketsController, :type => :controller do
#   describe 'GET index' do
#     it 'returns correct types' do
#       get :index
#       expect_json_types(foo: :string)
#     end
#   end
# end

require 'spec_helper'

describe SuggestionAPI do
  include Rack::Test::Methods

  def app
    SuggestionAPI
  end

  describe SuggestionAPI do
    describe 'GET /api/v1/trips_suggestions' do
      it 'Check if trip API works' do
        get "/api/v1/trips_suggestions"
        last_response.status.should == 200
      end
    end

    describe SuggestionAPI do
        describe 'GET /api/v1/hotel_suggestions' do
          it 'Check if hotel API works' do
            get "/api/v1/hotel_suggestions"
            last_response.status.should == 200
          end
        end
end
end