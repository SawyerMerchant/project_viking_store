class DashboardController < ApplicationController
  def show
    @all_users = User.all
    @all_orders = Order.all
    @all_products = Product.all
    @total_revenue = # qty *
  end
end
