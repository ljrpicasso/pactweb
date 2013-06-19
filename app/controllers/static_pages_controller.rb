class StaticPagesController < ApplicationController
  def home
    @posts = Post.published
    @show_more = true
    @categories = Category.all
    @tweets = Tweets.latest(3)
    @notifications = Notification.order("id DESC").all
  end

  def help
  end

  def about
  end
  
  def membership
  end
  
  def contact
  end
end
