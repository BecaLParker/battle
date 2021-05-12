require 'sinatra/base'
require "sinatra/reloader" if development?
require 'rack'

class Battle < Sinatra::Base

  get '/' do
    "Hello Battle!"
  end 
end
