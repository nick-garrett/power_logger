class Reading < ApplicationRecord
  belongs_to :device

  validates :usage, :presence => true
end
