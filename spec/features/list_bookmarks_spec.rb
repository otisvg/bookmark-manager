feature 'viewing a list of bookmarks' do
  scenario 'checks that the web response is successful' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'shows list of bookmarks on page' do
    Bookmarks.create(url: 'http://www.makersacademy.com', title: 'makers')
    Bookmarks.create(url: 'http://www.google.com', title: 'google')
    Bookmarks.create(url: 'http://www.destroyallsoftware.com', title: 'dos')
    visit('/bookmarks')
    expect(page).to have_link('makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('google', href: 'http://www.google.com')
    expect(page).to have_link('dos', href: 'http://www.destroyallsoftware.com')
  end
end
