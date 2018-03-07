feature 'Display health bar' do
  scenario "See the other player's hitpoints" do
    visit '/'
    fill_in(:Player1, with: 'Ragnar')
    fill_in(:Player2, with: 'Thracian')
    click_button('Submit')
    expect(page).to have_content('Thracian: 100/100')
  end

end
