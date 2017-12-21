	require 'khipu-api-client'

	receiver_id = 112010
	secret_key = 'b6289ea1fae076d98a180f88a279efcac5129c67'

	Khipu.configure do  |c|
	c.secret           = secret_key
	c.receiver_id      = receiver_id
	c.platform         = 'my-ecomerce'  # (optional) please let us know :)
	c.platform_version = '1.3'
	end