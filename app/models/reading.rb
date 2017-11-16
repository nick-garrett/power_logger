class Reading < ApplicationRecord
  belongs_to :device

  validates :device_id, :presence => true
  validates :usage, :presence => true
end
