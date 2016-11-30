class DashboardController < ApplicationController
  def show
    d = Dashboard.new
    @all_users_count = d.all_users
    @users_in_last_week = d.users_in_last_week
    @users_in_last_month = d.users_in_last_month

    # @all_orders_count = Order.all.count
    @all_products_count = d.all_products_added
    @products_in_last_week = d.product_added_in_last_week
    @products_in_last_month = d.products_added_in_last_month

    @total_revenue = d.all_revenue
    @revenue_in_last_month = d.all_revenue
    @revenue_in_last_week = d.revenue_in_last_month

    @all_orders_count = 0
    @orders_in_last_week = 0
    @orders_in_last_month = 0
  end
end
