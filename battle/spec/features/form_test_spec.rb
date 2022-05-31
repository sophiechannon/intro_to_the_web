RSpec.feature "testing form completion and submission" do
  scenario "data is added to form and then displayed to the user" do
    visit "/"
    fill_in "player_one_name", with: "Sophie"
    fill_in "player_two_name", with: "Rosie"
    click_button "Submit"
    
    save_and_open_page
    
    expect(page).to have_text("Sophie vs Rosie")
  end
end