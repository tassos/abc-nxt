class Event < ApplicationRecord
  has_many :applications
  has_many :users, through: :applications
  has_many :questions

  enum status: [:open, :closed, :cancelled, :announced]
end
