class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

  end

  def new
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
