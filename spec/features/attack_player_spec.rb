feature 'Attacking' do
  scenario "Be able to attack the other opponent" do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue')
    expect(page).to have_content('Thracian: 80')
  end
end
