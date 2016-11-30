class Product < ApplicationRecord

  def self.added_between(start_date, end_date)
    Product.select('COUNT(*) as count').where(created_at: (start_date..end_date) )[0].count.to_i
  end
end
