class Route < ApplicationRecord
  # station
  has_many :routes_stations
  has_many :stations, through: :routes_stations

  # trains
  has_many :trains

end
