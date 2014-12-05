require './app.rb'
require 'rspec'

describe "My Sinatra Application" do

	describe "GET '/'" do
	  it "should allow accessing the home page" do
	    get '/'
	    # last_response.should be_ok
	    expect(last_response).to be_ok
	  end

	  it "display index content" do
	  	get '/'
	  	expect(last_response.body).to include("This is index")
	  end
	end

	describe "GET '/about'" do
	  it "should allow to acess about page" do
	  	get '/about'
	  	expect(last_response).to be_ok
	  end

	  it "display about content" do
	  	get '/about'
	  	expect(last_response.body).to include("This is Sinatra application")
	  end
	end
end
