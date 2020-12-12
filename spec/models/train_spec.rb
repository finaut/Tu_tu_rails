require 'rails_helper'

RSpec.describe Train, type: :model do
  before do
    @route1 = Route.create title: 'Москва-Минск'
    @train1 = Train.create number: 4567
    @train2 = Train.create number: 3000
  end

  it 'check empty route' do
    expect(@train1.route).to eq nil
  end

  it 'trying to change' do
    @train1.route= @route1
    expect(@train1.route).to eq @route1
  end
end
