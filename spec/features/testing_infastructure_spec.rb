
feature 'Testing infastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Lets test if this works'
  end

  scenario 'Testing if the form works' do
    visit('/butts')
    expect(page).to have_content 'butts butts butts'
  end
end