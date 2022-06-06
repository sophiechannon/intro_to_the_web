feature "attack" do 
  scenario "Player 1 attacks Player 2" do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content ("Sophie has attacked Aisha")
  end

  scenario "Player 2 attacks Player 1" do 
    sign_in_and_play
    click_button "Attack"
    click_button "Next Round"
    click_button "Attack"
    expect(page).to have_content ("Aisha has attacked Sophie")
  end

  scenario "Player 2 looses 10 points" do 
    sign_in_and_play
    click_button "Attack"
    click_button "Next Round"
    expect(page).to have_content "Aisha: 90HP"
    expect(page).not_to have_content "Aisha: 100HP"
  end
end 