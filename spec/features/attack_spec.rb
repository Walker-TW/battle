feature 'Attacking' do
  scenario "reduces Player 2's HP by 10" do
    sign_in_and_play
    click_button 'Shank Fool'
    expect(page).to have_content 'Tom HP: 90'
  end
end