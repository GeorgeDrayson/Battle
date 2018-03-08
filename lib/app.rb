require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    session[:Player1_health] = 100
    session[:Player2_health] = 100
    redirect to('/play')
  end

  get '/play' do
    @Player1, @Player2 = [session[:Player1], session[:Player2]]
    @Player1_health, @Player2_health = [session[:Player1_health], session[:Player2_health]]
    erb(:play)
  end

  post '/attack_player2' do
    session[:Player2_health] -= 20
    redirect to('/confirmation')
  end

  get '/confirmation' do
    @Player1, @Player2 = [session[:Player1], session[:Player2]]
    erb(:confirmation)
  end



run! if app_file == $0

end
