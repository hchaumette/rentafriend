class PagesController < ApplicationController
  before_action :set_activities, only: %i[home]
  def home
    @display1 = @activities[1]
    @display2 = @activities[2]
    @display3 = @activities[3]
  end

  private

  def set_activities
    @activities = Activity.all
  end
end
