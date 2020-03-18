require 'sinatra/base'
require './lib/property_listing'
require './lib/user'

class Fya_hrbnb < Sinatra::Base

  get '/' do
    property_list = Property.new
    @properties = property_list.display_all
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
 p @result
  if @result == true
    redirect '/'
  else
   erb :login
 end
end


run! if app_file == $0
end
