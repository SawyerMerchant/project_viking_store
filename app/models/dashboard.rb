class Dashboard < ApplicationRecord

  Product.select('*').joins("JOIN order_contents ON product_id=products.id")

end
