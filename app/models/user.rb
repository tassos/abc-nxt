class User < ApplicationRecord
  has_many :applications
  validates_uniqueness_of :email

  def full_name
    first_name.to_s + ' ' + last_name.to_s
  end

  def completed?
    first_name.present? && last_name.present? && lbg.present?
  end
end
