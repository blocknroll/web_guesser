# I4: add colors

require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

def check_guess(guess, number)
  if (guess - number) > 5
    {"message" => "Way too high!", "background" => "red"}

  elsif guess > number
    {"message" => "Too high!", "background" => "orange"}

  elsif (number - guess) > 5
    {"message" => "Way too low!", "background" => "red"}

  elsif guess < number
    {"message" => "Too low!", "background" => "orange"}

  elsif guess == number
    {"message" => "You are correct! <p>The secret number is #{number}.</p>", "background" => "green"}
  end

end

get '/' do
  guess = params['guess'].to_i
  messages = check_guess(guess, number)
  erb :index, :locals => {:number  => number,
                          :messages => messages }
end







# # I3: refactor using settings for 'number'

# require 'sinatra'
# require 'sinatra/reloader'
#
# set :number, 'rand(100)'
#
# def check_guess(guess, number)
#   if (guess - number) > 5
#     "Way too high!"
#   elsif guess > number
#     "Too high!"
#   elsif (number - guess) > 5
#     "Way too low!"
#   elsif guess < number
#     "Too low."
#   elsif guess == number
#     "You are correct!
#     <p>The secret number is #{number}.</p>"
#   end
# end
#
# get '/' do
#   settings.number
#   guess = params['guess'].to_i
#   message = check_guess(guess, number)
#   erb :index, :locals => {:number  => number,
#                           :message => message }
# end








# # I2

# require 'sinatra'
# require 'sinatra/reloader'
#
# number = rand(100)
#
# def check_guess(guess, number)
#   if (guess - number) > 5
#     "Way too high!"
#   elsif guess > number
#     "Too high!"
#   elsif (number - guess) > 5
#     "Way too low!"
#   elsif guess < number
#     "Too low."
#   elsif guess == number
#     "You are correct!
#     <p>The secret number is #{number}.</p>"
#   end
# end
#
# get '/' do
#   guess = params['guess'].to_i
#   message = check_guess(guess, number)
#   erb :index, :locals => {:number  => number,
#     :message => message }
# end








# # I1

# require 'sinatra'
# require 'sinatra/reloader'
#
# number = rand(100)
#
# get '/' do
#
#   if (params['guess'].to_i - number) > 5
#     message = "Way too high!"
#   elsif params['guess'].to_i > number
#     message = "Too high!"
#   elsif (number - params['guess'].to_i > 5)
#     message = "Way too low!"
#   elsif params['guess'].to_i < number
#     message = "Too low."
#   elsif params['guess'].to_i == number
#     message = "You are correct!
#     <p>The secret number is #{number}.</p>"
#   end
#
#   erb :index, :locals => {:number  => number,
#     :message => message }
#
# end
