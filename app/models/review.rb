class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :restaurant, :content, :rating
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
