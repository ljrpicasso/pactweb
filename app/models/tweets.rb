class Tweets < ActiveRecord::Base
  attr_accessible :content, :screen_name, :tweet_id

  def self.latest(count)
    Tweets.order("tweet_id DESC").all(:limit => count)
  end
  
  def self.pull_tweets
    Twitter.user_timeline("pactwi", since_id: maximum(:tweet_id)).each do |tweet|
      unless exists?(tweet_id: tweet.id)
        create!(
          tweet_id: tweet.id,
          content: tweet.text,
          screen_name: tweet.user.screen_name,
        )
      end
    end
  end
end
