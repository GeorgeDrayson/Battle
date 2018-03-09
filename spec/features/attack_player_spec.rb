feature 'Attacking' do
  scenario "Be able to attack the other opponent" do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content('Thracian: 90')
  end
end
