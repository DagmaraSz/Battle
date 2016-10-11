require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @Player1 = session[:Player1]
    @Player2 = session[:Player2]
    erb(:play)
  end

  get '/attack' do
    @Player1 = session[:Player1]
    @Player2 = session[:Player2]
    erb(:attack)
  end


run! if app_file == $0
end
