class User < ApplicationRecord

  def self.joined_between(start_date, end_date)
    User.select('COUNT(*) as count').where('created_at > ? AND created_at < ?', start_date, end_date)[0].count.to_i
  end
end
