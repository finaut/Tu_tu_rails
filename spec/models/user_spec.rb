require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create email: 'bushido@gmail.com', encrypted_password: '111111'

    @ticket1 = Ticket.create user: @user
    @ticket2 = Ticket.create user: @user
    @ticket3 = Ticket.create user: @user

    @user.tickets << @ticket1
    @user.tickets << @ticket2
    @user.tickets << @ticket3
  end

  it 'check all ticket of user' do
    expect(@user.tickets).to eq [@ticket1, @ticket2, @ticket3]
  end

  it 'check one ticket' do
    expect(@user.tickets.first).to eq @ticket1
  end
end
