require 'sinatra'
require 'sinatra/reloader'

# random_number = rand(100)

get '/' do

  # "The SECRET number is #{random_number}."

  # throw params.inspect  #debugger

  # params["guess"]

  erb :index

end







# get '/' do
#   # "Hello, World!"
#
#   # throw params.inspect  #debugger
#
#   guess = params["guess"]
#
#
#   # if the guess is too high
#   #   set the message to "Too high!"
#   # end
#   # render the ERB template and pass in the number AND the message.
#   if guess > random_number
#     :message "Too high!"
#   end
#
#   erb :index, :locals => {:number  => random_number
#     :message => message }
#
#
#   end
