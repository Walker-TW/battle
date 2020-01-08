require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Lets test if this works'
  end

  get '/butts' do
    "butts butts butts"
  end

  run! if app_file == $0

end
