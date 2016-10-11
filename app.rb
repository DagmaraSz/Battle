require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  $Player1 = Player.new
  $Player2 = Player.new

  get '/' do
    erb(:index)
  end

  post '/names' do
    $Player1.name = params[:Player1]
    $Player2.name = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end


run! if app_file == $0
end
