require 'rails_helper'

# Notice that we specified the controller class name in the describe block.
# It will tell rspec to send the requests to the appropriate controller going forward.
describe DogsController do
  describe 'index' do
    it 'responds with success' do
      get :index
      expect(response).to be_success
    end
  end
end
