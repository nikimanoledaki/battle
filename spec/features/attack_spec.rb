feature "Attack" do
  scenario "Player 1 clicks on attack button" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Player 1 attacked Player 2")
  end
end
