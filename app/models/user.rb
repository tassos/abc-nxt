class User < ApplicationRecord
  has_many :applications
  validates_uniqueness_of :email
end
