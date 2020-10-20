feature 'home route displays title' do
  scenario 'user visits homepage and sees title' do
    visit('/')
    expect(page).to have_content('BookmarkManager')
  end
end
