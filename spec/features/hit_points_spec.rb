feature 'Display health bar' do
  scenario "See the other player's hitpoints" do
    sign_in_and_play
    expect(page).to have_content('Thracian: 100/100')
  end

end
