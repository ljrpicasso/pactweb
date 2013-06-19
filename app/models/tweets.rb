class Tweets < ActiveRecord::Base
  attr_accessible :content, :screen_name, :tweet_id
end
