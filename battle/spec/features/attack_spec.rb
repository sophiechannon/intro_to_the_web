feature "attack" do 
  scenario "Player 1 attacks Player 2" do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content ("Sophie has attacked Aisha")
  end

  scenario "Player 2 looses 10 points" do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Aisha has 90 points"
    expect(page).not_to have_content "Aisha has 100 points"
  end
end 