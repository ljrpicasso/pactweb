class Subscription < ActiveRecord::Base
  include Koudoku::Subscription

  belongs_to :user
  belongs_to :coupon

  attr_accessible :card_type, :coupon_id, :current_price, :last_four, :last_four, :plan_id, :stripe_id, :user_id
end
