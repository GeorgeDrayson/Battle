feature 'enter name' do

  scenario 'Allows players to enter their name and then displays them' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content("Ragnar versus Thracian")
  end

end
