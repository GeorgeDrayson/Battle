

def sign_in_and_play
  visit '/'
  fill_in(:Player1, with: 'Ragnar')
  fill_in(:Player2, with: 'Thracian')
  click_button('Submit')
end

def attack_and_confirm
  click_button('Attack')
  click_button('Continue')
end
