require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:index)
  end

  run! if app_file == $0
end