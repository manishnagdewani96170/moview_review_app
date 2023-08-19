class Movie < ApplicationRecord
  # validations
  validates :name, presence: true
  validates :year, presence: true, 
                   format: { with: /(19|20)\d{2}/i }, 
                   numericality: { 
                    only_integer: true, 
                    greater_than_or_equal_to: 1900, 
                    less_than_or_equal_to: Date.today.year
                  }

  # associations                
  belongs_to :actor
  belongs_to :director                
end
