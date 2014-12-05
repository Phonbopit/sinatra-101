require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/about' do
		erb :about
	end

	get 'book/:name' do
		'Book #{params[:name]}'
	end

end