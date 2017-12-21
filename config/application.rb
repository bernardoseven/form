require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Form
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    receiver_id = 112010
	secret_key = 'b6289ea1fae076d98a180f88a279efcac5129c67'

	Khipu.configure do  |c|
	c.secret           = secret_key
	c.receiver_id      = receiver_id
	c.platform         = 'my-ecomerce'  # (optional) please let us know :)
	c.platform_version = '1.3'
	end
  end
end
