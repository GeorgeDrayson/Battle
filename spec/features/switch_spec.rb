feature 'Switches turns' do
  scenario 'Lets player1 play, deducts HP, then lets player2 play, deducts HP' do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue')
    click_button('Attack')
    expect($game.player1.health).to eq(Player::DEFAULT_HIT_POINTS - 10)
    expect($game.player2.health).to eq(Player::DEFAULT_HIT_POINTS - 10)
  end
  scenario 'Remembers whose turn it is' do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue')
    expect($game.player_1_turn).to eq false
  end
end
