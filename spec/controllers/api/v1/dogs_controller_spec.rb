require 'rails_helper'

describe Api::V1::DogsController do
  describe 'index' do
    it 'responds success' do
      get :index
      expect(response).to be_success
    end

    context 'when there are many dogs' do
      let!(:dogs) { create_list :dog, 2 }

      it 'responds with the list of dogs in json format' do
        get :index

        body = JSON.parse response.body
        expect(body.count).to eq dogs.count
      end
    end
  end
end
