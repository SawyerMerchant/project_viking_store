class User < ApplicationRecord

  def self.joined_between(start_date, end_date)
    User.select('COUNT(*) as count').where('created_at > ? AND created_at < ?', start_date, end_date)[0].count.to_i
  end

  def self.in_city
    User.select('COUNT(users.id)').joins('JOIN addresses ON users.id=user_id').joins('JOIN cities ON cities.id=city_id').group('name').order('users.id').limit(3)
  end

end
