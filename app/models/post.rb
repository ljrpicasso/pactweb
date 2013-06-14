# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  published  :boolean
#  author_id  :integer
#

class Post < ActiveRecord::Base
  attr_accessible :body, :title, :published, :author, :author_id
  validates_presence_of :body, :title
  has_many :post_comments
  belongs_to :author, :class_name => "AdminUser"

  scope :published, where(:published => true)
  
  def content
    MarkdownService.new.render(body)
  end

  def author_name
    if author
      author.name
    else
      "Nobody"
    end
  end
end
