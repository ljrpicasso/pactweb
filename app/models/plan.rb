class Plan < ActiveRecord::Base
  has_many :subscriptions

  include Koudoku::Plan
  belongs_to :user
  belongs_to :coupon
  has_many :subscriptions

  attr_accessible :display_order, :features, :highlight, :interval, :name, :price, :stripe_id
  
  def plan_price(plan)
    return price
  end
  
end
