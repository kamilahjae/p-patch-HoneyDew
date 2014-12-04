class HomeController < ApplicationController

  def index
    @weather = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Seattle&units=imperial").parsed_response
    @forecast = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=xml&units=imperial&cnt=5").parsed_response["weatherdata"]["forecast"]["time"]
  end

end
