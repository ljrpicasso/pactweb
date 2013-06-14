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

require 'spec_helper'

describe PostComment do
  describe 'validations' do
    subject(:comment) { PostComment.new }
    before { comment.valid? }
    [:post, :body].each do |attribute|
      it "should validate presence of #{attribute}" do
        expect(comment).to have_at_least(1).error_on(attribute)
        expect(comment.errors.messages[attribute]).to include "can't be blank"
      end
    end
  end
end
