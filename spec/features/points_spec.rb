feature 'Hit points' do
  scenario 'Players see their Hit Points' do
    sign_in_and_play
    expect(page).to have_text("Player 1: 60/60 HP")
  end
end
