if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECTRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_iUuhkBGn46ZyDuMg339q9WgG00UmAz1Wnl',
    secret_key: 'sk_test_JTCh9MF9pJ9kFtrwGx7A9MKG00WTeGOStT'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
