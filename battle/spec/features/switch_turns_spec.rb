feature "swtich turns" do 
  scenario "initially is player1 by default" do 
    sign_in_and_play
    expect(page).to have_content("It's Sophie's turn")
  end

  scenario "switches to player2" do 
    sign_in_and_play
    click_button "Attack"
    click_button "Next Round"
    expect(page).to have_content("It's Aisha's turn")
    expect(page).not_to have_content("It's Sophie's turn")
  end
end