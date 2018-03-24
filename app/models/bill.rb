class Bill < ApplicationRecord
  belongs_to :channel
  belongs_to :platform
end
