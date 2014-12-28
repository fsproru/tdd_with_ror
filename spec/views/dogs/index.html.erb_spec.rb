require 'rails_helper'

describe 'dogs/index' do
  let(:dog) { create :dog }
  before do
    assign :dogs, [dog]
    render
  end

  it 'shows a list of dogs' do
    expect(rendered).to match(/#{dog.name}/)
  end
end
