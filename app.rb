require 'sinatra/base'
require './lib/property_listing'
require 'pg'

class Fya_hrbnb < Sinatra::Base

  get '/test' do
    erb :test
  end

  get '/notices'do
    erb :notices
  end

  get '/home' do
    @properties = Property.display_all
    erb :index
  end

get '/sign_up' do
 erb :sign_up
end

post '/sign_up' do
	#send user info to database
	redirect '/login'
end

get '/login' do
	erb :login
end

post '/login' do
	redirect '/'
end


run! if app_file == $0
end
