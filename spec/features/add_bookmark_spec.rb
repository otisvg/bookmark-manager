
feature 'Add a new bookmark do' do 
  scenario 'visiting the homepage' do 
    visit("/bookmarks/add")
    fill_in 'add-bookmark', with: "http://www.amazon.com"
    click_button 'Add bookmark'


    expect(page).to have_content("http://www.amazon.com")
  end
end 
