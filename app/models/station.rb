class Station < ApplicationRecord
  # routes
  has_many :routes_stations
  has_many :routes, through: :routes_stations
end
