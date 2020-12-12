require 'rails_helper'

RSpec.describe Ticket, type: :model do
  before do
    @route = Route.create title: 'Москва-Минск'
    @train = Train.create number: 4567
    @user = User.create email: 'samurai@gmail.com', encrypted_password: '111111'

    @ticket = Ticket.create train: @train, route: @route,  user: @user
  end

  it 'trying check user in ticket' do
    expect(@ticket.user).to eq @user
  end

  it 'trying check number train in ticket' do
    expect(@ticket.train).to eq @train
  end

  it 'trying check route in ticket' do
    expect(@ticket.route).to eq @route
  end
end
