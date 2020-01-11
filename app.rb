require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Lets test if this works'
  end

  get '/butts' do
    "butts butts butts"
  end

  get '/form' do
    erb(:player_form)
  end

  post '/names' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get'/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/attack' do
    redirect '/attack'
  end

  run! if app_file == $0
end
