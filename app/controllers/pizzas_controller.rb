class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    render(:index)
  end

  def homepage
    render(:homepage)
  
  end

  def show
    
    @pizza = Pizza.find(params[:id])
    render(:show)

  end

  def new
    @pizza = Pizza.new
    render(:new)
  end

  def create
    name = params["pizza"]["name"]
    price = params["pizza"]["price"]
    pizzatype = params["pizza"]["pizzatype"]
    pizza = Pizza.create({name: name, price: price, pizzatype: pizzatype})
    redirect_to pizzas_path
  end

     
end

