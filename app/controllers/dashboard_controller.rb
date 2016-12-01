class DashboardController < ApplicationController
  TODAY = Time.now()
  WEEK_AGO = 1.week.ago
  MONTH_AGO = 1.month.ago
  BEGINNING = Time.new('1900')
  def show

    d = Dashboard.new
    @overall_platform = d.overall_platform
    
    @top_three_states = User.in_state(3)
    @top_three_cities = User.in_city(3)
  end
end
