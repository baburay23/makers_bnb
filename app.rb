require 'sinatra/base'
require './lib/property_listing'
require './lib/user'
require './lib/reserve.rb'
require 'pg'


class Fya_hrbnb < Sinatra::Base

  get '/test' do
    erb :test
  end

  get '/reserve' do
    erb :reserve
  end

  post '/reserve' do
  Reserve.request(check_in_date: params[:check_in_date], check_out_date: params[:check_out_date], r_duration: params[:r_duration])
  erb :reserve
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
    redirect '/home'
  else
   erb :login
 end
end
run! if app_file == $0
end 
