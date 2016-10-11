require '././app.rb'
require 'spec_helper'
require 'rack_session_access/capybara'

RSpec.feature "see player 2 hit points", :type => :feature do
  scenario "Player 1 can see player 2 hit points" do
    visit "/"

    fill_in "Player1", :with => "Bob"
    fill_in "Player2", :with => "Steve"
    click_button "Start"

    expect(page).to have_text("Steve's hit points are : 23")
  end
end
