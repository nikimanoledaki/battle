feature 'Hit points' do
  scenario 'Players see their Hit Points' do
    visit('/')
    fill_in :name1, with: "Dave"
    fill_in :name2, with: "Mittens"
    click_button "Submit"
    expect(page).to have_text("Dave: 0")
  end
end
