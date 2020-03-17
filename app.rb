require 'sinatra/base'

class Fya_hr < Sinatra::Base

get '/sign_up' do
 erb:sign_up
end


run! if app_file == $0
end
