class OrdersController < ApplicationController

  before_action :authenticate_user!

  # GET /orders
  def index
    @orders = Order.includes(:product).all
  end

  # GET /orders/1
  def show
    @order = Order.find(params[:id])
  end

  # POST /orders
  def create
  end

  # DELETE /orders/1
  def destroy
  end

end
