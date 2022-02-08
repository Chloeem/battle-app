feature 'Enter names' do
  scenario 'Players enter names and see them on the screen' do
    visit('/')
    fill_in :player_1, with: 'Chloe'
    fill_in :player_2, with: 'Tsuki'
    click_button 'Submit'
    expect(page).to have_content 'Chloe vs. Tsuki'
  end
end