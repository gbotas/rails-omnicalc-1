Rails.application.routes.draw do
  
get("/", { :controller => "square", :action => "square_input" })


get("/square/new", { :controller => "square", :action => "square_input"})

end 
