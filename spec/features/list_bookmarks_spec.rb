feature 'viewing a list of bookmarks' do
  scenario 'checks that the web response is successful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows list of bookmarks on page' do
    visit("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end

end
