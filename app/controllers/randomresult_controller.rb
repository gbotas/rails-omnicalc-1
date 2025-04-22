class RandomresultController < ApplicationController

  def random
    @min = params.fetch("user_min").to_f

    @max = params.fetch("user_max").to_f

    @result = rand(@min..@max)

  render ({:template => "/result_templates/random"})
  end 
end 
