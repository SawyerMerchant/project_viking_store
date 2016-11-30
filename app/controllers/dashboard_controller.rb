class DashboardController < ApplicationController
  def show
    @all_users_count = User.all.count
    @all_orders_count = Order.all.count
    @all_products_count = Product.all.count
    d = Dashboard.new
    @total_revenue = d.revenue_between(Time.new('1999'), Time.now)
    # @total_revenue = # qty *
  end
end
