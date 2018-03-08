feature 'Confirm attack' do
  scenario "Tells Player 1 that they attacked Player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Ragnar hit Thracian and it was super effective")
  end
end
