class PagesController < ApplicationController
  before_action :set_activities, only: %i[home]
  def home
  end

  private

  def set_activities
    @activities = Activity.all
  end
end
