class StaticPagesController < ApplicationController
  def home
    @posts = Post.published
  end

  def help
  end

  def about
  end
end
