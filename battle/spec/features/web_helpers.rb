def sign_in_and_play
  visit "/"
  fill_in "player_one_name", with: "Sophie"
  fill_in "player_two_name", with: "Aisha"
  click_button "Submit"
end