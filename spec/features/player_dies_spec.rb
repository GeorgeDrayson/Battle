feature 'Players die' do
  scenario "Says Player 1 wins when Player 2 HP is zero" do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    attack_and_confirm
    click_button('Attack')
    expect(page).to have_content('Ragnar WON')
  end
end
