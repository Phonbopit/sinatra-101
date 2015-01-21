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
		@title = "Sinatra 101 : Home Page"
		erb :index
	end

	get '/about' do
		@title = "Sinatra 101 : About Us"
		erb :about, :locals => { :name => 'Chai' }
	end

	get '/book' do
		'List all books'
	end

	get '/book/:name' do
		"Book #{params[:name]}"
	end

end