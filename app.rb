require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name1]), Player.new(params[:name2]))
    $game = @game
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.victim
    Attack.run(@game.victim)
    erb :attack
  end

  post '/switch_turn' do
    @game.switch_turn
    redirect '/game_over' if @game.lost?
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
