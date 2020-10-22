require 'pg'

class Bookmarks

  def self.initiate
    if ENV['ENVIRONMENT'] == 'test'
      @@connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      @@connection = PG.connect :dbname => 'bookmark_manager'
    end
  end

  def self.all
    initiate
    result = @@connection.exec "SELECT * FROM bookmarks"
    result.map { |row|
      {:title => row['title'], :url => row['url']}
    }
  end

  def self.create(url:, title:)
    initiate
    @@connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')")
  end
end
