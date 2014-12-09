class Activity < ActiveRecord::Base
  def self.find_activity(activity_params)
    @activity = Activity.find(activity_params)
  end

  def self.activity_params
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
