class KhipuController < ApplicationController
  
  def pay
    @number = Number.first.number.to_i
  	@client = Khipu::PaymentsApi.new
    @response = @client.payments_post('Motivo del cobro', 'CLP', @number, {
    transaction_id: 'FACT2001',
    expires_date: DateTime.new(2018, 4, 4),
    body: 'Descripción de la compra',
    picture_url: 'http://mi-ecomerce.com/pictures/foto-producto.jp',
    return_url: 'http://localhost:3000/pay',
    cancel_url: 'http://localhost:3000/pay',
    notify_url: 'http://localhost:3000/pay',
    notify_api_version: '1.3'
    })
    banks = Khipu::BanksApi.new
    response = banks.banks_get()
    #paymentUrl = response[:'payment_url']
    redirect_to confirmation_path
  end

  def confirmation
  	
    
    @client = Khipu::PaymentsApi.new
    @response = @client.payments_get(notification_token)
    if response.receiver_id == receiver_id
      if response.status == 'done' && response.amount == amount
      # marcar el pago como completo y entregar el bien o servicio
      end
    else
    # receiver_id no coincide
    end
  end  
  # Usar versión anterior de la API de

end
