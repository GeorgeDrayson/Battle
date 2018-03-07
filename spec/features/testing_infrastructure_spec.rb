feature Battle do
  scenario 'tests that the homepage says "Testing infrastructure working!"' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

end
