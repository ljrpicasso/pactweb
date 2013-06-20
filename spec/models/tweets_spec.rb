# == Schema Information
#
# Table name: tweets
#
#  id          :integer          not null, primary key
#  tweet_id    :string(255)
#  screen_name :string(255)
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Tweets do
  pending "add some examples to (or delete) #{__FILE__}"
end
