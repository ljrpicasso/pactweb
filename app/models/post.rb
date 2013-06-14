class Post < ActiveRecord::Base
  attr_accessible :body, :title, :published
  validates_presence_of :body, :title
  has_many :post_comments

  scope :published, where(:published => true)
  
  def content
    MarkdownService.new.render(body)
  end
end
