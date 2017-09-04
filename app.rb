require 'sinatra/base'
require './models/memory'

class App < Sinatra::Base

  get '/set' do
    woking
  end

run! if app_file == $0

end
