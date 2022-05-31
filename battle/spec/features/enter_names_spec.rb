RSpec.feature "testing form completion and submission" do
  scenario "data is added to form and then displayed to the user" do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_text("Sophie vs Aisha")
  end
end