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
#  categories :string(255)
#

class Post < ActiveRecord::Base
  attr_accessible :body, :title, :published, :author, :author_id, :category_ids
  validates_presence_of :body, :title
  has_many :post_comments
  has_and_belongs_to_many :categories

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
