# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
end
