# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  headline   :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notification < ActiveRecord::Base
  attr_accessible :content, :headline
end
