class Bill < ApplicationRecord
  belongs_to :channel
  belongs_to :platform

  def self.public_bills
    includes(:platform).where(states: 1)
  end
end
