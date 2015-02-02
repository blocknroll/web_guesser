require 'sinatra'
require 'sinatra/reloader'

random_number = rand(101)

get '/' do
  # "Hello, World!"
  "The SECRET number is #{random_number}."
end
