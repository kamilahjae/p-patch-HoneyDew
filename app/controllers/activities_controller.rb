class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    # possibly have newly created event moderated by admin? they can approve/deny?

    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to show_activity_path(@activity)
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to show_activity_path
    else
      render edit_activity_path
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    if @activity.destroy(activity_params)
      redirect_to activities_path
    else
      render show_activity_path
    end 
  end

  def activity_params
    params.require(:activity).permit(
    :name,
    :description,
    :start_date,
    :end_date,
    :location,
    :author,
    )
  end

  # def self.find_activity
  #   @activity = Activity.find(activity_params)
  # end
end
