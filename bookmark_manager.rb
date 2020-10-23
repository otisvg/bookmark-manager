require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  enable :method_override
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = Bookmarks.all
    erb(:bookmarks)
  end

  get '/bookmarks/add' do
    erb(:add_bookmark)
  end

  post '/bookmarks' do
    Bookmarks.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks/edit' do
    @bookmark_list = Bookmarks.all
    erb(:edit_bookmarks)
  end

  delete '/bookmarks/delete' do
    Bookmarks.delete(title: params[:check])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
