class OrdersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /orders
  def index
    @orders = Order.includes(:product).all
  end

  # GET /orders/1
  def show
    @order = Order.find(params[:id])
  end

end
