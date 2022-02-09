feature 'View hit points' do
  scenario 'See player 2s hit points' do
    visit('/')
    fill_in :player_1, with: 'Chloe'
    fill_in :player_2, with: 'Tsuki'
    click_button 'Submit'
    expect(page).to have_content 'Tsuki: 50HP'
  end
end