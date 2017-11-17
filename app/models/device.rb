class Device < ApplicationRecord
  has_many :readings

  def state_as_word
    state ? "on" : "off"
  end

  def switch_state_word
    state ? "Turn off" : "Turn on"
  end
end
