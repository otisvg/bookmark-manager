require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb (:index)
  end

  get '/bookmarks' do
    @bookmark_list = Bookmarks.all
    erb(:bookmarks)
  end
  run! if app_file == $0
end
