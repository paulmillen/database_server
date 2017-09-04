feature 'set' do
  scenario 'exists' do
    visit '/set'
    expect(page).to have_content('working')
  end
end
