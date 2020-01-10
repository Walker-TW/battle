def sign_in_and_play
  visit ('/form')
  fill_in :name1, with: 'Tom'
  fill_in :name2, with: 'Not Tom'
  click_button 'BEGIN'
end
