require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# manual install sinatra if error for localhost is received.
# gem install sinatra
# gem install sinatra-contrib
