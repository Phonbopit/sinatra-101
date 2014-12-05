require 'rubygems'
require 'sinatra/base'

class MyApp < Sinatra::Base

	get '/' do
		'Home Page'
	end

end