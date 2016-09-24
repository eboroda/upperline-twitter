require './config/environment'
require_relative '../models/user'
require './app/models/tweet'



class ApplicationController < Sinatra::Base
    
    configure do
        set :views, 'app/views'
        set :public_folder, 'public/css'
    
    end 
    
    
    
    get '/' do 
        @user1 = User.new("Elizabeth", 15, "NYC")
        @tweet1 = Tweet.new("I like harry potter", "hermione")
        @tweet2 = Tweet.new("starbucks", "chai lattes")
        @tweet3 = Tweet.new("pizza", "olive pizza is the best")
        @tweet4 = Tweet.new("soul cycle", "6 am classes")
        @tweet5 = Tweet.new("anderson", "class of 2015")
        @tweet6 = Tweet.new("hsas", "soph")
        @tweet7 = Tweet.new("i love apple pie and apple cider and apple cider donuts", "yay fall")
        @tweets = Tweet.all
        erb :index 
    end 
    
end 