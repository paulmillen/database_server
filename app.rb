require 'sinatra/base'

class App < Sinatra::Base

  get '/set' do
    'working'
  end

run! if app_file == $0

end
