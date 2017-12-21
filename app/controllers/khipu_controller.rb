class KhipuController < ApplicationController
  
  def pay
  	api = Khipu::PaymentsApi.new({
              expires_date: Time.now + (24*60*60) # 1 day from now
              send_email:   true,
              payer_name:   "payer",
              payer_email:  "payer@mail.com"
            })
  end

end
