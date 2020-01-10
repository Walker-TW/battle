describe "Adding in names to the Player form", type: :feature do
  it 'adds two players' do
      sign_in_and_play
      expect(page).to have_content 'Tom vs. Not Tom'
  end
end
