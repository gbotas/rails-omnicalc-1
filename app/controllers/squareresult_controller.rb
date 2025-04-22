class SquareresultController < ApplicationController

  def square
    @number= params.fetch("user_number")

    @result= @number.to_f ** 2

    render( { :template => "/result_templates/square"})
  end 
end 
