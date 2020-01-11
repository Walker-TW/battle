feature 'Display whose turn' do 
  scenario 'First turn shows Tom'do  
  sign_in_and_play
  # p "Lookie Here"
  # p @game.whose_turn
  # p @game.player1.name
    expect(page).to have_content 'Guess whose turn it is its.....Tom!'
  end
end