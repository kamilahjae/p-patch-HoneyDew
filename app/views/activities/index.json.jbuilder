# Take all the events and its attributes and create an array
json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :location, :author
  json.start activity.start_date
  json.end activity.end_date
  json.url show_activity_url(activity, format: :html)
end
