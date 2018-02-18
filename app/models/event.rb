class Event < ApplicationRecord
  has_many :applications
  has_many :users, through: :applications
  has_many :questions
end
