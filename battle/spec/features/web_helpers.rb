def sign_in_and_play
  visit "/"
  fill_in :name1, with: "Sophie"
  fill_in :name2, with: "Aisha"
  click_button "Submit"
end