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

  def initialize
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

    @top_three_states = User.in_state(3)
    @top_three_cities = User.in_city(3)

  end

  def overall_platform
    {panel_title: "Overall Platform",
      tables: {
        total: {
          table_title: 'Total',
          table_headers: [item, data],
          rows: [
            ['New Users', @all_users_count],
            ['Orders', @all_orders_count],
            ['New Products', @all_products_count],
            ['Revenue', @total_revenue]
          ]
        },
        last_seven: {
          table_title: 'Last Seven Days',
          table_headers: [item, data],
          rows: [
            ['New Users', @users_in_last_week],
            ['Orders', @orders_in_last_week],
            ['New Products', @products_in_last_week],
            ['Revenue', @revenue_in_last_week]
          ]
        }
        last_month: {
          table_title: 'Last Month',
          table_headers: [item, data],
          rows: [
            ['New Users', @users_in_last_month],
            ['Orders', @orders_in_last_month],
            ['New Products', @products_in_last_month],
            ['Revenue', @revenue_in_last_month]
          ]
        }
      }
  end

end


<!--
panel_title: "Overall",
tables: {
  all time: {
    th: [item, data],
    [i1, d1],
    [i2, d2]
    },
  week: {
    th: [item, data],
    [i1, d1],

  } -->
