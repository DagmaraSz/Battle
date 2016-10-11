require '././app.rb'
require 'spec_helper'


RSpec.feature "players_names", :type => :feature do

  scenario "Users type their name into a form" do
    sign_in_and_play
    expect(page).to have_text("Players' names are Player1: Bob, Player2: Steve")
  end
end
