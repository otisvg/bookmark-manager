require 'pg'

def setup_test_database
  print 'setting up test database'
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('TRUNCATE bookmarks;')
end

def add_platform_records
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'makers');")
  connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'google');")
  connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'dos');")
end
