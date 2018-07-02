require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit "/"
    click_on 'Add a new todo'
    fill_in 'Title', with: 'Adding this todo'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Adding this todo'
  end
end
