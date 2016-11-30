class Dashboard

  def products_sold_between(start_date, end_date)
    Product.select('quantity', 'name', 'price').joins("JOIN order_contents ON product_id=products.id").joins("JOIN orders ON order_id=orders.id").where('orders.checkout_date >= ? AND orders.checkout_date <= ?', start_date, end_date)
  end

  def revenue_between(start_date, end_date)
    orders = products_sold_between(start_date, end_date)
    orders.inject(0) {|revenue, o| revenue + (o.price * o.quantity) }.to_i
  end


end
