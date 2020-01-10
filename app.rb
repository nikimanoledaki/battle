require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.new(Player.new(params[:name1]), Player.new(params[:name2]))
    $game = @game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.victim
    @game.attack
    erb :attack
  end

  post '/switch_turn' do
    @game = $game
    @game.switch_turn
    redirect '/game_over' if @game.lost?
    redirect '/play'
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
