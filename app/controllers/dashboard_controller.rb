class DashboardController < ApplicationController
  TODAY = Time.now()
  WEEK_AGO = 1.week.ago
  MONTH_AGO = 1.month.ago
  BEGINNING = Time.new('1900')
  def show

    d = Dashboard.new
    @all_users_count = User.joined_between(BEGINNING, TODAY)
    @users_in_last_week = User.joined_between(WEEK_AGO, TODAY)
    @users_in_last_month = User.joined_between(MONTH_AGO, TODAY)

    @all_orders_count = Order.all.count
    @all_products_count = Product.added_between(BEGINNING, TODAY)
    @products_in_last_week = Product.added_between(WEEK_AGO, TODAY)
    @products_in_last_month = Product.added_between(MONTH_AGO, TODAY)

    @total_revenue = Order.revenue_between(BEGINNING, TODAY)
    @revenue_in_last_month = Order.revenue_between(MONTH_AGO, TODAY)
    @revenue_in_last_week = Order.revenue_between(WEEK_AGO, TODAY)

    @all_orders_count = Order.placed_between(BEGINNING, TODAY)
    @orders_in_last_week = Order.placed_between(WEEK_AGO, TODAY)
    @orders_in_last_month = Order.placed_between(MONTH_AGO, TODAY)
  end
end
