require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:Player1]), Player.new(params[:Player2]))
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack
    redirect to('/confirmation')
  end

  get '/confirmation' do
    @game = $game
    @game.switch_confirmation
    erb(:play)
  end

   post '/switch' do
    @game = $game
    @game.switch_confirmation
    @game.switch
    redirect to('/play')
  end

run! if app_file == $0

end
