

class Tweet
    attr_accessor :message, :username
    
    ALL_TWEETS = []
    
    def initialize(message, username)
        @message = message
        @username = username
        ALL_TWEETS.push self
    end 
    
    def self.all
        ALL_TWEETS
    end 
    
    
end 