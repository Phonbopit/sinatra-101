require './app.rb'
require 'rspec'
require 'rack/test'

describe "My Sinatra Application" do
	include Rack::Test::Methods

  it "should allow accessing the home page" do
    get '/'
    last_response.should be_ok
  end
  
end
