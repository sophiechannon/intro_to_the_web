feature "hitpoints" do
  scenario "displays hit points" do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_text("Aisha: 100HP")
  end
end