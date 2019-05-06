require 'sinatra'
require 'sinatra/reloader'

get '/' do
    #render the ERB template named index and create a local variable for the template named number 
    #which has the same value as the number variable from this server code
    erb :index, :locals => {:number => rand(100)}    
end