feature 'viewing the bookmarks route' do
  scenario 'checks that the web reponse is succesful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows bookmarks on page' do
    visit("/bookmarks")
    expect(page).to have_content("google: https://www.google.co.uk/")
    expect(page).to have_content("slack: https://slack.com/intl/en-gb/")
  end

end
