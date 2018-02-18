class Application < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :answers

  validates :event_id, uniqueness: { scope: :user_id }
end
