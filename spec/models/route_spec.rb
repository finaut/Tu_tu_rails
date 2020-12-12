require 'rails_helper'

RSpec.describe Route, type: :model do
  before do
    @route1 = Route.create title: 'Москва-Минск'
    @train1 = Train.create number: 4567
    @train2 = Train.create number: 3000
    @station1 = Station.create name: 'Москва'
    @station2 = Station.create name: 'Минск'
  end
  # Associations has_many, belongs_to  (Route - Trains)
  it 'cheking trains on the route' do
    expect(@route1.trains).to eq []
  end

  it 'trying to add a foreign key to the table' do
    @route1.trains << @train1
    expect(@route1.trains.first).to eq @train1
  end

  # association has_many third model (Routes - Stations)
  it 'trying check stations in route' do
    expect(@route1.stations).to eq []
  end

  it 'trying to add stations to route' do
    @route1.stations << @station1
    @route1.stations << @station2
    expect(@route1.stations).to eq [@station1, @station2]
  end
end