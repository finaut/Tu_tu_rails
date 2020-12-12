class Train < ApplicationRecord
  # routes
  belongs_to :route

  # ticket
  has_many :tickets
end
