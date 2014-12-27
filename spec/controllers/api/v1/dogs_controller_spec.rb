require 'rails_helper'

describe Api::V1::DogsController do
  it 'responds success' do
    get :index
    expect(response).to be_success
  end
end
