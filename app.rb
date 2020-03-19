require 'sinatra/base'
require './lib/property_listing'
require './lib/user'
require 'pg'


class Fya_hrbnb < Sinatra::Base
  enable :sessions

  get '/test' do
    erb :test
  end

  get '/requests'do
    erb :requests
  end

  get '/home' do
    @first_name = session[:first_name]
    @last_name = session[:last_name]
    erb :index
  end

get '/sign_up' do
 erb :sign_up
end

post '/sign_up' do
  User.create(first_name: params[:first_name], last_name: params[:last_name], email_address: params[:email_address], password: params[:password])
#send user info to database
	redirect '/login'
end


get '/login' do

	erb :login
end

post '/login' do
 @result = User.verify(email_address: params[:email_address], password: params[:password])

  if @result.class != String
    session[:first_name] = @result.first_name
    session[:last_name] = @result.last_name
    redirect '/home'
  else
   erb :login
 end
end

get '/list_space' do
  erb :list_space
end

get '/reserve' do
  if session[:first_name] != nil
  @properties = Property.display_all
  erb :reserve
else
  erb :login
end
end

get '/post' do
  if session[:first_name] != nil
    erb :list_space
  else
    erb :login
end
end



run! if app_file == $0
end
