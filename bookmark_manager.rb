require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookmarkList.new.all
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
