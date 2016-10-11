require '././app.rb'
require 'spec_helper'


RSpec.feature "Attack", :type => :feature do

  scenario "Player 1 attacks Player 2 and gets a confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Bob attacked Steve")
  end

  scenario "Player 1 attacks Player 2 and reduces Player 2's HP by 10" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Steve's hit points are: 40")
  end

end
