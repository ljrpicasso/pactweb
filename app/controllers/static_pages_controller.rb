class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @posts = Post.all
  end

  def help
  end

  def about
  end
end
