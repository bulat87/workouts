class Exercise < ActiveRecord::Base
  belongs_to :workout
  validates :name, :workout_type, :link, :description, presence: true
  validates :name, length: { maximum: 100 }
  validates :workout_type, length: { maximum: 100 }
  validates :link, length: { maximum: 200 }
  validates :description, length: { maximum: 1000 }
end
