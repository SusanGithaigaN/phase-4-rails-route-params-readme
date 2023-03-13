class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # find cheese by id
  # send json reponse using that cheese object
  def show
    # byebug
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
