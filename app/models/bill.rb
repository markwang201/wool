class Bill < ApplicationRecord
  belongs_to :channel
  belongs_to :platform

  def self.public_bills
    where(states: 1)
  end
end
