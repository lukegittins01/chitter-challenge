require 'sinatra/base'
require './lib/chitter_feed'

class Chitter < Sinatra::Base

  get '/' do
    redirect '/chitter_feed'
  end

  get '/chitter_feed' do
    @feed_items = ChitterFeed.content
    @name_items = ChitterFeed.names
    erb :feed
  end
end
