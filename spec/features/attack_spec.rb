require '././app.rb'
require 'spec_helper'


RSpec.feature "Attack", :type => :feature do

  scenario "Player 1 attacks Player 2 and gets a confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content("Bob attacked Steve")
  end

end
