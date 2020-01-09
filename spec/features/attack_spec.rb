feature "Attack" do
  scenario "Player 1 clicks on attack link" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Player 1 attacked Player 2")
  end

  scenario 'After Player 1 attack, Player 2 loses HP' do
    sign_in_and_play
    click_link("Attack")
    click_link("Return")
    expect(page).to have_content("Player 2: 50/60 HP")
  end
end
