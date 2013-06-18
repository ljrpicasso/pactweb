class StaticPagesController < ApplicationController
  def home
    @posts = Post.published
    @categories = Category.all
  end

  def help
  end

  def about
  end
  
  def membership
  end
  
end
