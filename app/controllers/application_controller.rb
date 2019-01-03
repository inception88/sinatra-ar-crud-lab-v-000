
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles' do
    @articles = Articles.all
    erb :index
  end

  get '/articles/new' do
    @article = Articles.find_by_id(:id)
    erb :new
  end

  get '/articles/:id' do
    @article = Articles.find_by_id(:id)
    erb :show
  end
end
