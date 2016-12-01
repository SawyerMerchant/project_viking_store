class User < ApplicationRecord

  def self.joined_between(start_date, end_date)
    User.select('COUNT(*) as count').where('created_at > ? AND created_at < ?', start_date, end_date)[0].count.to_i
  end

  def self.in_city(count)
    cities = User.select('name AS city, COUNT(users.id) as users').joins('JOIN addresses ON users.id=user_id').joins('JOIN cities ON cities.id=city_id').group('cities.name').order('users DESC').limit(count).to_a
    city_users = {}
    cities.each do |relation|
      city_users[relation.city] = relation.users  
    end
    city_users
  end

  def self.in_state(count)
    states = User.select('name AS state, COUNT(users.id) as users').joins('JOIN addresses ON users.id=user_id').joins('JOIN states ON states.id=state_id').group('states.name').order('users DESC').limit(count).to_a

    state_users = {}
    states.each do |relation|
      state_users[relation.state] = relation.users  
    end
    state_users
  end

end


# def self.in_city
#   User.select('name AS city, COUNT(users.id) as users').joins('JOIN addresses ON users.id=user_id').joins('JOIN cities ON cities.id=city_id').group('cities.name').order('users DESC').limit(3)
  # city_users = {}
  # cities.map |city, users| do
  #   city_users[city] = users  
  # end
# end

# def self.in_state
#   User.select('name AS state, COUNT(users.id) as users').joins('JOIN addresses ON users.id=user_id').joins('JOIN states ON states.id=state_id').group('states.name').order('users DESC').limit(3)
# end