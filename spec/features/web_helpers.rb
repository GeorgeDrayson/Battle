

def sign_in_and_play
  visit '/'
  fill_in(:Player1, with: 'Ragnar')
  fill_in(:Player2, with: 'Thracian')
  click_button('Submit')
end
