feature 'Delete a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmarks.create(url: 'http://www.world.com', title: 'World')
    visit('/bookmarks')
    expect(page).to have_link('World', href: 'http://www.world.com')
    
    click_button 'Edit'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('World', href: 'http://www.world.com')
  end
end
