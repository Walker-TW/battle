require 'sinatra/base'
require './lib/player'

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
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    @hp1 = $player1.hp
    @hp2 = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    @hp1 = $player1.hp
    @hp2 = $player2.hp
    erb(:attack)
  end

  post '/attack' do
    $player2.take_damage
    redirect '/attack'
  end

  run! if app_file == $0
end
