require 'sinatra/base'

class Fya_hrbnb < Sinatra::Base

  get '/' do
    'All properties'
  end

run! if app_file == $0
end
