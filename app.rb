require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $name1
    @name2 = $name2
    erb :play
  end

  get '/attack' do
    @name1 = $name1
    @name2 = $name2
    $name1.attack($name2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
