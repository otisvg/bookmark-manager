feature 'See Hello World on page' do
  scenario 'Test app is running' do
    visit('/')
    expect(page).to have_content('Hello World!')
  end
end
