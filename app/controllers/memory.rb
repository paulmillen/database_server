class App < Sinatra::Base

  get '/set' do
    Memory.create(request.params)
  end

  get '/get' do
    Memory.instance.return_value(request.params)
  end

end
