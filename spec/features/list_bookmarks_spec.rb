feature 'viewing a list of bookmarks' do
  scenario 'checks that the web response is successful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows list of bookmarks on page' do
    visit("/bookmarks")
    expect(page).to have_content("google: https://www.google.co.uk/")
    expect(page).to have_content("slack: https://slack.com/intl/en-gb/")
  end

end
