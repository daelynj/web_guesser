require 'sinatra'
require 'sinatra/reloader'
require 'pry'

@@random_num = rand(0..100)
get '/' do
    guess = params["guess"].to_i
    @message = check_guess(guess)

    #render the ERB template named index and create a local variable for the template named number 
    #which has the same value as the number variable from this server code
    erb :index, :locals => {:number  => @@random_num,
                            :message => @message}
end
def check_guess(guess)
    if (guess - @@random_num) > 5
        "Way too high!"
    elsif guess > @@random_num
        "Too high!"
    elsif (@@random_num - guess) < 5
        "Way too low!"
    elsif guess < @@random_num
        "Too low!"
    else guess == @@random_num
        "Win"
    end

end