require 'rubygems'
require 'sinatra/base'

class MyApp < Sinatra::Base

	get '/' do
		'Home Page'
	end

	get '/about' do
		'About Page'
	end

	get 'book/:name' do
		'Book #{params[:name]}'
	end

end