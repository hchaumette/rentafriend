class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show destroy update edit]

  def new
    @activity = Activity.new
    authorize @activity
  end

  def index
    @category = params[:category]
    @activities = policy_scope(Activity)
    @category_activities = @activities.where(category: @category) if @category

  end

  def show
    authorize @activity
    @marker = [ {
      lat: @activity.latitude,
      lng: @activity.longitude
    }]

  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    authorize @activity
    if @activity.save
      redirect_to  activities_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @activity
    @activity.destroy
    redirect_to activities_path, status: :see_other
  end

  def edit
    authorize @activity
  end

  def update
    authorize @activity
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :content, :location, :category, :photo)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
