require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('to do list', {:type => :feature}) do

  # it('processes the users input and return a to do list') do
  #   visit('/')
  #   fill_in('task', :with => 'clean')
  #   click_button('Submit your Task')
  #   expect(page).to have_content('Your task has been submitted')
  # end
end
