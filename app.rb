require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :sessions, true
  set :foo, 'bar'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @Player1 = params[:Player1]
    @Player2 = params[:Player2]
    erb(:play)
  end
run! if app_file == $0
end
