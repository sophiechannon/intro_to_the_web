RSpec.feature "testing homepage" do
  scenario "Homepage contains text" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end