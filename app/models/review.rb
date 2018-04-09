class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :movieuser

  # Validations would go here.
  validates            :movie_id, presence: true
  validates_associated :movie 
end
