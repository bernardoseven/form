Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_ZU7Jp6BKbYJOkSdYvxYCJ0lq
'],
  :secret_key      => ENV['sk_test_X8zG2uGV99UU96kXbPpT747J']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]