feature 'Player names' do
  scenario 'New players fill in form with two player names, click submit, and see names' do
    sign_in_and_play
    expect(page).to have_text("Player 1 versus Player 2")
  end
end
