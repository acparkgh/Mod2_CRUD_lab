class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    render(:index)
  end

  def homepage
    render(:homepage)
  end
  
  def show
    @pizza = Pizza.find(params[:id])  # @pizza = Pizza.find(10)
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
    redirect_to(pizza_path(pizza.id))
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def update
    @pizza = Pizza.find(params[:id])
    name = params["pizza"]["name"]
    price = params["pizza"]["price"]
    pizzatype = params["pizza"]["pizzatype"]
    @pizza.update({name: name, price: price, pizzatype: pizzatype})
    redirect_to pizza_path(@pizza.id)
  end
    
  

    # @article = Article.find(params[:id])
    # @article.update(title: params[:article][:title], description: params[:article][:description])
    # redirect_to article_path(@article)
  
     
end

