feature 'Displays play 1 hit points' do
  scenario 'Displays hit points of 100' do
    sign_in_and_play
    expect(page).to have_content 'Tom HP: 100'
  end
end