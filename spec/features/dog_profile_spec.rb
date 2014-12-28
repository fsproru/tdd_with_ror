require 'rails_helper'

# Capybara comes with it's own syntax
# feature is in fact just an alias for describe, background is an alias for before,
# scenario for it, and given/given! aliases for let/let!, respectively.

# http://www.rubydoc.info/github/jnicklas/capybara/master
feature 'Profile' do
  given!(:dog) { create :dog }

  scenario 'Seeing a profile image' do
    visit root_path
    click_link dog.name
    image = find 'img#profile_pic'

    expect(image['src']).to match dog.image
  end
end
