class Dashboard
  # TODAY = Time.now
  # WEEK_AGO = 1.week.ago
  # MONTH_AGO = 1.month.ago
  # BEGINNING = Time.new('1900')

  # attr_reader :all_users, :users_in_last_week,
  #             :users_in_last_month,
  #             :all_revenue, :revenue_in_last_week,
  #             :revenue_in_last_month,
  #             :all_products_added,
  #             :products_added_in_last_week,
  #             :products_added_in_last_month
  # def initialize
  #   @all_users = User.joined_between(BEGINNING, TODAY)
  #   @users_in_last_week = User.joined_between(WEEK_AGO, TODAY)
  #   @users_in_last_month = User.joined_between(MONTH_AGO, TODAY)
  #
  #   @all_revenue = Order.revenue_between(BEGINNING, TODAY)
  #   @revenue_in_last_week = Order.revenue_between(WEEK_AGO, TODAY)
  #   @revenue_in_last_month = Order.revenue_between(MONTH_AGO, TODAY)
  #
  #   @all_products_added = Product.added_between(BEGINNING, TODAY)
  #   @products_added_in_last_week = Product.added_between(WEEK_AGO, TODAY)
  #   @products_added_in_last_month = Product.added_between(MONTH_AGO, TODAY)
  # end


  # def revenue_between(start_date, end_date)
  #   orders = products_sold_between(start_date, end_date)
  #   orders.inject(0) {|revenue, o| revenue + (o.price * o.quantity) }.to_i
  # end
end
