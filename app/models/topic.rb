class Topic < ApplicationRecord
  include CommonModule
  test_puts
  # scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}
end
