require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $Player1.attack($Player2)
    erb(:attack)
  end


run! if app_file == $0
end
