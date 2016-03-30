class Workout < ActiveRecord::Base
  has_many :exercises, dependent: :destroy
  belongs_to :user
  validates :date, :workout, :length, presence: true
  validates :date, :workout, :rating, :length, length: { maximum: 200 }
end
