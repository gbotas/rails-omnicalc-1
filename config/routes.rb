Rails.application.routes.draw do
  
get("/", { :controller => "squareinput", :action => "square" })


get("/square/new", { :controller => "squareinput", :action => "square"})

get("/square/results", { :controller => "squareresult", :action => "square"})

end 
