require 'sinatra/base'

class Fya_hr < Sinatra::Base

get '/' do 
	'Hello'
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
