require '././app.rb'
require 'spec_helper'

RSpec.feature "see player 2 hit points", :type => :feature do
  scenario "Player 1 can see player 2 hit points" do
    sign_in_and_play
    expect(page).to have_text("Steve's hit points are : 50")
  end
end
