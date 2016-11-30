class Dashboard

  def revenue_between(start_date, end_date)
    this = Product.select('quantity', 'name', 'price').joins("JOIN order_contents ON product_id=products.id").where('order_contents.updated_at >= ? AND order_contents.updated_at <= ?', start_date, end_date)
    p this
  end

end
