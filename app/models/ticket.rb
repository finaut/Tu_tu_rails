class Ticket < ApplicationRecord
  # user
  belongs_to :user

  # train
  belongs_to :train
end
