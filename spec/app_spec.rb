require './app.rb'
require 'rspec'

describe "My Sinatra Application" do


  it "should allow accessing the home page" do
    get '/'
    # last_response.should be_ok
    expect(last_response).to be_ok
  end

  it "should allow to acess about page" do
  	get '/about'
  	expect(last_response).to be_ok
  end
end
