require 'pg'

describe Bookmarks do
  array = [
    {:title => 'makers', :url => 'http://www.makersacademy.com'},
    {:title => 'google', :url => 'http://www.google.com'},
    {:title => 'dos', :url => 'http://www.destroyallsoftware.com'}

  ]
  describe '#all' do
    it 'displays a list bookmarks' do
      print 'setting up test database'
      setup_test_database
      add_platform_records

      bookmarks = Bookmarks.all
      3.times do |each|
        expect(bookmarks[each].title).to eq (array[each][:title])
        expect(bookmarks[each].url).to eq(array[each][:url])
      end
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      test_array = {:title => 'testbookmark', :url => 'http://www.testbookmark.com'}
      Bookmarks.create(url: 'http://www.testbookmark.com', title: 'testbookmark')
      expect(Bookmarks.all.last.title).to include(test_array[:title])
      expect(Bookmarks.all.last.url).to include(test_array[:url])
    end
  end

  describe '#delete' do
  it 'deletes the given bookmark' do
    setup_test_database
    bookmark = Bookmarks.create(title: 'Makers', url: 'http://www.makersacademy.com')

    Bookmarks.delete(title: bookmark.title)

    expect(Bookmarks.all.length).to eq 0
  end
end
end
