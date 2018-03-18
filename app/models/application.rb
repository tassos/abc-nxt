class Application < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :answers, dependent: :destroy

  validates :event_id, uniqueness: { scope: :user_id }

  enum status: [:pending, :cancelled, :paid, :refunded]
end
