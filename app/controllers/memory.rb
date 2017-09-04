class App < Sinatra::Base

  before do
    @memory = Memory.instance
  end

  get '/set' do
    @memory = Memory.create(request.params)
  end

  get '/get' do
    @memory.return_value(request.params)
  end

end
