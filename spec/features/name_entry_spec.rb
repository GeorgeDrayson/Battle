feature 'enter name' do

  scenario 'allows players to enter their name and then displays them' do
    visit '/'
    fill_in(:Player1, with: 'Ragnar')
    fill_in(:Player2, with: 'Thracian')
    click_button('Submit')
    expect(page).to have_content("Ragnar versus Thracian")
  end

end
