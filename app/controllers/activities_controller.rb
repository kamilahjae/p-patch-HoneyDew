class ActivitiesController < ApplicationController
  def index
    @activities = Activities.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to show_activity_path
    end
  end

  def show
    @activity = Activity.find_by(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

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
end
