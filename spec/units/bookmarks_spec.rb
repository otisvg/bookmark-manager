require 'pg'

describe Bookmarks do
  describe '#all' do
    it 'displays a list bookmarks' do
      print 'setting up test database'
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'makers');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'google');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'dos');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include({:title => 'makers', :url => 'http://www.makersacademy.com'})
      expect(bookmarks).to include({:title => 'google', :url => 'http://www.google.com'})
      expect(bookmarks).to include({:title => 'dos', :url => 'http://www.destroyallsoftware.com'})
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com', title: 'testbookmark')
      expect(Bookmarks.all).to include({:title => 'testbookmark', :url => 'http://www.testbookmark.com'})
    end
  end
end
