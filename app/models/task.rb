class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence: true
  scope :incomplete, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }
end
