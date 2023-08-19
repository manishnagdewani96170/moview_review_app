class Review < ApplicationRecord
  # validations
  validates :rating, numericality: { greater_than_or_equal_to: 0 }

  # associations
  belongs_to :movie
  belongs_to :user 
end
