class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates_presence_of :body, :title
  has_many :post_comments
  
end
