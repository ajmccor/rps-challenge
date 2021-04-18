feature 'register name' do
  scenario 'player registers name before game' do
    visit ('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave!'
  end
end
