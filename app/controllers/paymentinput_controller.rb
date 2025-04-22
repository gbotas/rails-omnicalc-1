class PaymentinputController < ApplicationController

  def payment

    render ( {:template => "/input_templates/payment"})
  end 
end 
