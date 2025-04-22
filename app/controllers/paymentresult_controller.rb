class PaymentresultController < ApplicationController

  def payment
    @apr_display = params.fetch("user_apr").to_f.to_fs(:percentage, {:precision => 4})

    @years_display = params.fetch("user_years")

    @principal_display = params.fetch("user_principal").to_f.to_fs(:currency, {:precision => 2})

    @apr = (params.fetch("user_apr").to_f/100)/12

    @principal = params.fetch("user_principal").to_f

    @loan_term = params.fetch("user_years").to_f*12

    @numerator_result = @apr*@principal 

    @denominator_result = 1- ((1+@apr)**(-@loan_term))

    @the_result = (@numerator_result/@denominator_result)
  
    @the_result_display = @the_result.to_fs(:currency, {:precision => 2})

    render ( {:template => "/result_templates/payment"})
  end 
end 
