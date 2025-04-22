Rails.application.routes.draw do
  
get("/", { :controller => "squareinput", :action => "square" })


get("/square/new", { :controller => "squareinput", :action => "square"})

get("/square/results", { :controller => "squareresult", :action => "square"})

get("/square_root/new", { :controller => "squarerootinput", :action => "squareroot"})

get("/square_root/results", { :controller => "squarerootresult", :action => "squareroot"})

get("/payment/new", { :controller => "paymentinput", :action => "payment"})

get("/payment/results", { :controller => "paymentresult", :action => "payment"})

end 
