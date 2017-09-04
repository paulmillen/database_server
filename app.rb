require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    'infrastructure working'
  end

run! if app_file == $0

end
