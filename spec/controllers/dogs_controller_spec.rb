require 'rails_helper'

# Notice that we specified the controller class name in the describe block.
# It will tell rspec to send the requests to the appropriate controller going forward.
describe DogsController do
  describe 'index' do
    let!(:dogs) { create_list :dog, 2 }

    it 'responds with success' do
      get :index
      expect(response).to be_success
    end

    it 'fetches all dogs' do
      get :index
      expect(assigns :dogs).to eq dogs
    end
  end
end
