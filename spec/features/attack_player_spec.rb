describe "Attacking a player", type: :feature do
  it 'shows you attacked player' do
      sign_in_and_play
      click_button "Shank Fool"
      expect(page).to have_content 'Tom straight up shanked Not Tom!'
  end
end
