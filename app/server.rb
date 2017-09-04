class App < Sinatra::Base

  register Sinatra::Partial
  set :partial_template_engine
  enable :partial_underscores

end
