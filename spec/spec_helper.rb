require 'rubygems'
require 'rack/test'
require 'sinatra/base'

require File.expand_path("../../app.rb", __FILE__)

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() MyApp end
end

RSpec.configure { |c| c.include RSpecMixin }