require 'pg'

class Bookmarks
  attr_reader :id, :url, :title

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.initiate
    if ENV['ENVIRONMENT'] == 'test'
      @@connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      @@connection = PG.connect :dbname => 'bookmark_manager'
    end
  end

  def self.all
    initiate
    result = @@connection.exec "SELECT * FROM bookmarks;"
    result.map { |row|
      Bookmarks.new( :id => row['id'], :title => row['title'], :url => row['url'])
    }
  end

  def self.create(url:, title:)
    initiate
    result = @@connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING url, title, id;")
    Bookmarks.new( :id => result[0]['id'], :title => result[0]['title'], :url => result[0]['url'])
  end

  def self.delete(id:)
    if ENV['ENVIRONMENT'] == 'test'
      @@connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      @@connection = PG.connect :dbname => 'bookmark_manager'
    end
    id.each do |id|
      @@connection.exec("DELETE FROM bookmarks WHERE id='#{id}';")
    end
  end
end
