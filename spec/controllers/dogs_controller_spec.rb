require 'rails_helper'

# Notice that we specified the controller class name in the describe block.
# It will tell rspec to send the requests to the appropriate controller going forward.
describe DogsController do
  describe 'index' do
    before do
      get :index
    end

    it 'responds with success' do
      expect(response).to be_success
    end

    context 'when there are many dogs' do
      let!(:dogs) { create_list :dog, 2 }

      it 'fetches all dogs' do
        expect(assigns :dogs).to eq dogs
      end
    end
  end
end
