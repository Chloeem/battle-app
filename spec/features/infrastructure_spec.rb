feature 'Testing infrastructure' do
  scenario 'Can run page and check content' do
    visit('/test')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end