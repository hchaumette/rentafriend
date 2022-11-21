class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def index
    @activities = Activity.all
  end

  def create
    raise
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to  activities_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :content, :location)
  end
end
