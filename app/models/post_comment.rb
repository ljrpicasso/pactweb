# == Schema Information
#
# Table name: post_comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostComment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :post, :body
  attr_accessible :post, :body
end
