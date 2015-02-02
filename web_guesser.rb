require 'sinatra'
require 'sinatra/reloader'

random_number = rand(101)

get '/' do
  # "Hello, World!"
  erb :index, :locals => {:number => random_number }
end
