class RandominputController < ApplicationController

  def random
    render( {:template => "/input_templates/random"})
  end 
end 
