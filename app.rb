require 'sinatra/base'
require './models/memory'

class App < Sinatra::Base

  before do
    @memory = Memory.instance
  end

  get '/set' do
    @memory = Memory.create(request.params)
  end

  get '/get' do
    query_key = request.params.values[0]
    @memory.data[query_key].to_s
  end

  run! if app_file == $0

end
