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
    session[:confirmation] = false
    redirect to('/play')
  end

  get '/play' do
    @confirmation = session[:confirmation]
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack
    redirect to('/confirmation')
  end

  get '/confirmation' do
    session[:confirmation] = true
    @confirmation = session[:confirmation]
    @game = $game
    erb(:play)
  end

   post '/switch' do
    session[:confirmation] = false
    @confirmation = session[:confirmation]
    @game = $game
    @game.switch
    redirect to('/play')
  end

run! if app_file == $0

end
