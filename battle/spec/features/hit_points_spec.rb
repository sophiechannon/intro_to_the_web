feature "hitpoints" do
  scenario "displays hit points" do
    sign_in_and_play
    expect(page).to have_text("Aisha: 100HP")
    expect(page).to have_text("Sophie: 100HP")
  end

  scenario "hit points get removed for player 1 too" do
    sign_in_and_play
    click_button "Attack"
    click_button "Next Round"
    click_button "Attack"
    click_button "Next Round"
    expect(page).to have_text("Aisha: 90HP")
    expect(page).to have_text("Sophie: 90HP")
  end

  scenario "Player 2's HP reaches 0" do
    sign_in_and_play
    19.times { attack_opponent }
    expect(page).to have_content "Aisha loses"
  end
end