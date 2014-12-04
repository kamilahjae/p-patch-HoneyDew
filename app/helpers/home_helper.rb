module HomeHelper

  def convert_wind_to_mph(mps_wind)
  #  1 Meter per Second = 2.2369362920544 Miles per Hour
    mph_wind = mps_wind * 2.2369362920544
    mph_wind.to_i
  end

end
