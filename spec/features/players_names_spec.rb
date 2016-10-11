require '././app.rb'
require 'spec_helper'


RSpec.feature "players_names", :type => :feature do

  scenario "Users type their name into a form" do
    visit "/"

    fill_in "Player1", :with => "Bob"
    fill_in "Player2", :with => "Steve"
    click_button "Start"
    expect(page).to have_text("Players' names are Player1: Bob, Player2: Steve")
  end
end
