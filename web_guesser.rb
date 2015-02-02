require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do

  # if the guess is too high
  #   set the message to "Too high!"
  # end
  # render the ERB template and pass in the number AND the message

  if (params['guess'].to_i - number) > 5
    message = "Way too high!"
  elsif params['guess'].to_i > number
    message = "Too high!"
  elsif (number - params['guess'].to_i > 5)
    message = "Way too low!"
  elsif params['guess'].to_i < number
    message = "Too low."
  elsif params['guess'].to_i == number
    message = "You are correct!
              <p>The secret number is #{number}.</p>"
  end

  erb :index, :locals => {:number  => number,
                          :message => message }

end
