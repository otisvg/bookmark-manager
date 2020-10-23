feature 'Delete a bookmark' do
  scenario 'A user can delete a bookmark' do
    setup_test_database
    Bookmarks.create(url: 'http://www.world.com', title: 'Wrld')
    visit('/bookmarks')
    expect(page).to have_link('Wrld', href: 'http://www.world.com')
    click_button('Edit')
    page.check('Wrld')
    click_button('Delete')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Wrld', href: 'http://www.world.com')
  end
end
