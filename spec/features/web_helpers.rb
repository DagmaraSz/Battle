def sign_in_and_play
  visit "/"

  fill_in "Player1", :with => "Bob"
  fill_in "Player2", :with => "Steve"
  click_button "Start"
end
