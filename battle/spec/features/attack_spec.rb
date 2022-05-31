feature "attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content ("Sophie has attacked Aisha!")
  end
end