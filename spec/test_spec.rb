feature 'tests working' do
  scenario 'is working' do
    visit '/'
    expect(page).to have_content 'infrastructure working'
  end
end
