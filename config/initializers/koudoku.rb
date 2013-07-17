Koudoku.setup do |config|
  config.webhooks_api_key = "d1e64a47-4ddd-4399-ae65-ce75a1f6940b"
  config.subscriptions_owned_by = :user
  config.stripe_publishable_key = ENV['STRIPE_PUBLISHABLE_KEY']
  config.stripe_secret_key = ENV['STRIPE_SECRET_KEY']
  # config.free_trial_length = 30
end
