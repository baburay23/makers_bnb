require 'sinatra/base'
require './lib/property_listing'

class Fya_hrbnb < Sinatra::Base

  get '/' do
    property_list = Property.new
    @properties = property_list.display_all
    erb :index
  end

run! if app_file == $0
end
