require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true
  set :foo, 'bar'

  get '/' do
  
  end
end
