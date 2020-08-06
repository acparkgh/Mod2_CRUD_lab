Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {to: "pizzas#homepage", as: "whatever"})

  get("/pizzas", {to: "pizzas#index"})
  
  get("/pizzas/new", {to: "pizzas#new"})
  
  post("/pizzas", {to: "pizzas#create", as: "addpizza"})
  get("/pizzas/:id", {to: "pizzas#show", as: "pizza"})


end