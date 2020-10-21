
feature 'Add a new bookmark do' do
  scenario 'visiting the homepage' do
    visit("/bookmarks/add")
    fill_in("url", with: "http://www.amazon.com")
    click_button 'Submit'
    expect(page).to have_content("http://www.amazon.com")
  end
end
