# I5_2: guess limiting

require 'sinatra'
require 'sinatra/reloader'


secret_number = rand(100)

@@guesses = 5


def check_guess(guess, secret_number)
  return { "message"     => "pick a number between 0 and 100.<br>
                             you have 5 guesses to start.",
            "background" => "black"
            } unless guess

  guess = guess.to_i

  @@guesses -= 1

  if (guess - secret_number) > 5
    {"message"    => "WAY TOO HIGH!<br>&#8595; &#8595; &#8595; &#8595; &#8595;",
     "background" => "red"}

  elsif guess > secret_number
    {"message"    => "Too high!<br>&#8595; &#8595; &#8595;",
     "background" => "orange"}

  elsif (secret_number - guess) > 5
    {"message"    => "&#8593; &#8593; &#8593; &#8593; &#8593;<br>WAY TOO LOW!",
     "background" => "red"}

  elsif guess < secret_number
    {"message"    => "&#8593; &#8593; &#8593;<br>Too low!",
     "background" => "orange"}

  elsif guess == secret_number
    {"message"    => "CORRECTOMUNDO, BRAH!
                      <h2>#{secret_number} is the secret number!</h2>",
     "background" => "green"}
  end
end


get '/' do
  guess = params['guess']
  messages = check_guess(guess, secret_number)
  erb :index, :locals => {:secret_number => secret_number,
                          :guesses       => @@guesses,
                          :messages      => messages }
end
