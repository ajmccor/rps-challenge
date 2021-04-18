feature 'register name' do
  scenario 'player registers name before game' do
    register
    expect(page).to have_content 'Welcome Dave!'
  end
end
