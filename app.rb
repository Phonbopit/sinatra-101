require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	not_found do
		erb :error
	end

	get '/' do
		erb :index
	end

	get '/about' do
		erb :about
	end

	get '/book' do
		'List all books'
	end

	post 'book/:name' do
		'Book #{params[:name]}'
	end

end