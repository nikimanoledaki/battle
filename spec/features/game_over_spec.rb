feature 'Game ends' do
  it 'game ends when a player has 0 health points' do
    sign_in_and_play
    11.times do 
      click_link("Attack")
      click_button("Return") 
    end
    expect(page).to have_content("Player 1 lost!")
  end
end
