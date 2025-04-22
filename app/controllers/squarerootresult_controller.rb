class SquarerootresultController < ApplicationController

  def squareroot
    @number = params.fetch("user_number")

    @result = @number.to_f ** 0.5

    render( {:template => "result_templates/squareroot"})
  end 
end 
