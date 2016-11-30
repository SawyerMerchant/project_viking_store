class Order < ApplicationRecord

  def self.revenue_between(start_date, end_date)
    Product.select('SUM(quantity*price) AS revenue').joins("JOIN order_contents ON product_id=products.id").joins("JOIN orders ON order_id=orders.id").where('orders.checkout_date >= ? AND orders.checkout_date <= ?', start_date, end_date)[0].revenue.to_i
  end

  def self.placed_between(start_date, end_date)
    Order.select('COUNT(*) as count').where(checkout_date: (start_date..end_date) )[0].count.to_i
  end
end
