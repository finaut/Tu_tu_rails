require 'rails_helper'

RSpec.describe Station, type: :model do
  before do
    @station1 = Station.create name: 'Москва'
    @station2 = Station.create name: 'Минск'
    @station3 = Station.create name: 'Екатеринбург'
    @route1 = Route.create title: 'Москва-Минск'
    @route2 = Route.create title: 'Минск-Екатеринбург'

    @route1.stations << @station1
    @route1.stations << @station2

    @route2.stations << @station2
    @route2.stations << @station3
  end

  it 'try cheack all routes in station' do
    expect(@station2.routes).to eq [@route1, @route2]
  end

end
