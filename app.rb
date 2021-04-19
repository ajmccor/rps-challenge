require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/choice' do
    @player_choice = params[:player_choice]
    $game = Game.new(params[:player_choice])
    redirect '/game'
  end

  get '/game' do
    @result = $game.run_game
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# manual install sinatra if error for localhost is received.
# gem install sinatra
# gem install sinatra-contrib
