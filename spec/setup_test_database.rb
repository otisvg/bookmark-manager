require 'pg'

print 'setting up test database'
connection = PG.connect(dbname: 'bookmark_manager_test')
connection.exec('TRUNCATE bookmarks;')
