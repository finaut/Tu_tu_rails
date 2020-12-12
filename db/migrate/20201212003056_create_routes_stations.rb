class CreateRoutesStations < ActiveRecord::Migration[5.2]
  def change
    # table many to many(routes-station)
    create_table :routes_stations do |t|
      t.references :route, index: true
      t.references :station, index: true
    end
  end
end
