class StaticPagesController < ApplicationController
  def home
    @posts = Post.published
    @show_more = true
    @categories = Category.all
    @tweets = Tweets.latest(3)
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
