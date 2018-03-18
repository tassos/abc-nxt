class Question < ApplicationRecord
  belongs_to :event
  has_many :answers

  enum kind: [:text, :number, :date, :checkbox]
end
