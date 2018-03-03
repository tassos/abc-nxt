class Question < ApplicationRecord
  belongs_to :event
  has_many :answers

  enum kind: [:free_text, :short_text, :number, :date, :boolean]
end
